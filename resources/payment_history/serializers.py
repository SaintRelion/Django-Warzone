from rest_framework import serializers
from datetime import timedelta
from django.db import models
from sr_libs.dal.resource import register_resource
from .models import PaymentHistory


class PaymentHistoryUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = PaymentHistory
        fields = ["status"]  # frontend only updates status

    def update(self, instance, validated_data):
        # Update the payment instance first
        instance = super().update(instance, validated_data)

        bill = instance.bill  # related Billing object

        # Sum all completed payments for this bill
        completed_payments_sum = (
            bill.payments.filter(status="completed").aggregate(
                total=models.Sum("amount")
            )["total"]
            or 0
        )

        if completed_payments_sum > bill.amount:
            # Use the latest next_billing_date among completed payments as base
            latest_payment_date = (
                bill.payments.filter(status="completed")
                .order_by("-next_billing_date")
                .first()
            )
            base_date = (
                latest_payment_date.next_billing_date
                if latest_payment_date
                else instance.payment_date
            )
            bill.due_date = base_date + timedelta(days=30)
        else:
            # Reset due_date if payments no longer cover the bill
            bill.due_date = instance.next_billing_date

        bill.save(update_fields=["due_date"])

        return instance


register_resource(
    name="paymenthistory",
    model=PaymentHistory,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": PaymentHistoryUpdateSerializer,
        "delete": False,
        "archive": True,
    },
)
