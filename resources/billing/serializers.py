from django.utils import timezone
from django.db.models import Prefetch
from rest_framework import serializers

from sr_libs.dal.resource import register_resource, register_derived_resource
from sr_libs.dal.serializers import DerivedSerializer

from ..payment_history.models import PaymentHistory
from .models import Billing


register_resource(
    name="billing",
    model=Billing,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)


class UserBillingDerivedSerializer(DerivedSerializer):
    # Optional filters
    user = serializers.IntegerField(required=False)
    subscription = serializers.IntegerField(required=False)
    status = serializers.ChoiceField(
        choices=["paid", "partially_paid", "unpaid", "overdue"], required=False
    )

    @classmethod
    def get_queryset(cls, filters):
        qs = Billing.objects.select_related("user", "subscription", "plan").filter(
            is_archived=False
        )

        # Apply filters
        if user_id := filters.get("user"):
            qs = qs.filter(user=user_id)
        if subscription_id := filters.get("subscription"):
            qs = qs.filter(subscription=subscription_id)

        # Prefetch only completed payments
        completed_payments = PaymentHistory.objects.filter(status="completed")
        qs = qs.prefetch_related(
            Prefetch(
                "payments",
                queryset=completed_payments,
                to_attr="completed_payments",
            )
        )

        return qs

    @classmethod
    def list_data(cls, queryset):
        results = []

        today = timezone.now().date()

        for bill in queryset:
            payments = getattr(bill, "completed_payments", [])

            total_paid = sum(p.amount for p in payments)
            total_change = sum(p.change for p in payments)
            total_credits = sum(p.credit for p in payments)

            remaining = bill.amount - total_paid

            overdue_days = 0

            if total_paid == 0:
                if today > bill.due_date:
                    status = "overdue"
                    overdue_days = (today - bill.due_date).days
                else:
                    status = "unpaid"

            elif remaining > 0:
                if today > bill.due_date:
                    status = "overdue"
                    overdue_days = (today - bill.due_date).days
                else:
                    status = "partially_paid"
            else:
                status = "paid"

            results.append(
                {
                    "id": bill.id,
                    "user": (
                        {
                            "id": bill.user.id,
                            "first_name": bill.user.first_name,
                            "last_name": bill.user.last_name,
                            "email": bill.user.email,
                            "phone_number": bill.user.phone_number,
                        }
                        if bill.user
                        else None
                    ),
                    "customer": (
                        f"{bill.user.first_name} {bill.user.last_name}"
                        if bill.user
                        else ""
                    ),
                    "plan": (
                        {
                            "id": bill.plan.id,
                            "name": bill.plan.name,
                            "price": bill.plan.price,
                            "speed_mbps": bill.plan.speed_mbps,
                            "description": bill.plan.description,
                        }
                        if bill.plan
                        else None
                    ),
                    "subscription": (
                        {
                            "id": bill.subscription.id,
                            "amount": bill.subscription.amount,
                            "status": bill.subscription.status,
                        }
                        if bill.subscription
                        else None
                    ),
                    "amount": bill.amount,
                    "due_date": bill.due_date,
                    "created_at": bill.created_at,
                    "total_paid": total_paid,
                    "total_change_given_back": total_change,
                    "total_credits": total_credits,
                    "remaining": max(remaining, 0),
                    "status": status,
                    "overdue": overdue_days,
                }
            )

        return results


register_derived_resource(
    name="userbilling",
    serializer=UserBillingDerivedSerializer,
)
