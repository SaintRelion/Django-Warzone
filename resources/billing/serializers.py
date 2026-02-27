from django.utils import timezone
from rest_framework import serializers

from sr_libs.dal.resource import register_resource, register_derived_resource
from sr_libs.dal.serializers import DerivedSerializer

from ..payment_history.models import PaymentHistory
from .models import Billing


class UserBillingDerivedSerializer(DerivedSerializer):
    # Optional filters
    user_id = serializers.IntegerField(required=False)
    subscription_id = serializers.IntegerField(required=False)
    status = serializers.ChoiceField(
        choices=["paid", "partially_paid", "unpaid", "overdue"], required=False
    )

    @classmethod
    def list_data(cls, filters):
        # Base queryset
        billings_qs = Billing.objects.select_related("user", "subscription").filter(
            is_archived=False
        )

        # Apply filters manually
        if "user_id" in filters:
            billings_qs = billings_qs.filter(user_id=filters["user_id"])
        if "subscription_id" in filters:
            billings_qs = billings_qs.filter(subscription_id=filters["subscription_id"])

        # Prefetch payments
        payments_qs = PaymentHistory.objects.filter(
            status="completed", bill_id__in=billings_qs.values_list("id", flat=True)
        )
        payments_by_bill = {}
        for p in payments_qs:
            payments_by_bill.setdefault(p.bill_id, []).append(p)

        results = []
        for bill in billings_qs:
            u = bill.user
            bill_payments = payments_by_bill.get(bill.id, [])

            total_paid = sum(p.amount for p in bill_payments)
            total_change = sum(p.change for p in bill_payments)
            total_credits = sum(p.credit for p in bill_payments)
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
                    "customer": f"{u.first_name} {u.last_name}" if u else "",
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

register_derived_resource(
    name="userbilling",
    serializer=UserBillingDerivedSerializer,
)
