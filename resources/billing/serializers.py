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
    def list_data(cls, filters):
        billings_qs = Billing.objects.select_related(
            "user", "subscription", "plan"
        ).filter(is_archived=False)

        if filters.get("user"):
            billings_qs = billings_qs.filter(user=filters["user"])

        if filters.get("subscription"):
            billings_qs = billings_qs.filter(subscription=filters["subscription"])

        # Prefetch payments
        completed_payments = PaymentHistory.objects.filter(status="completed")

        billings_qs = billings_qs.prefetch_related(
            Prefetch(
                "payments",
                queryset=completed_payments,
                to_attr="completed_payments",
            )
        )

        results = []

        for bill in billings_qs:
            payments = getattr(bill, "completed_payments", [])

            total_paid = sum(p.amount for p in payments)
            total_change = sum(p.change for p in payments)
            total_credits = sum(p.credit for p in payments)

            remaining = bill.amount - total_paid

            if total_paid == 0:
                status = (
                    "overdue" if timezone.now().date() > bill.due_date else "unpaid"
                )
            elif remaining > 0:
                status = "partially_paid"
            else:
                status = "paid"

            results.append(
                {
                    "id": bill.id,
                    "subscription": bill.subscription_id,
                    "user": bill.user_id,
                    "plan": bill.plan_id,
                    "customer": (
                        f"{bill.user.first_name} {bill.user.last_name}"
                        if bill.user
                        else ""
                    ),
                    "amount": bill.amount,
                    "due_date": bill.due_date,
                    "created_at": bill.created_at,
                    "total_paid": total_paid,
                    "total_change_given_back": total_change,
                    "total_credits": total_credits,
                    "remaining": max(remaining, 0),
                    "status": status,
                }
            )

        return results


register_derived_resource(
    name="userbilling",
    serializer=UserBillingDerivedSerializer,
)
