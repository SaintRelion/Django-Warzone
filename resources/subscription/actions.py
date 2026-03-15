import logging

from datetime import timedelta
from django.utils import timezone
from django.db import models

from sr_libs.delivery_channels.services.email import send_email
from resources.billing.models import Billing

logger = logging.getLogger(__name__)


def auto_generate_bill(subscription):
    today = timezone.now().date()

    last_bill = (
        Billing.objects.filter(subscription=subscription).order_by("-due_date").first()
    )

    # FIRST BILL
    if not last_bill:
        next_due = today + timedelta(days=30)

        new_bill = Billing.objects.create(
            user=subscription.user,
            subscription=subscription,
            plan=subscription.plan,
            customer=f"{subscription.user.first_name} {subscription.user.last_name}",
            amount=subscription.amount,
            due_date=next_due,
        )

        send_bill_created(new_bill)
        return

    completed_sum = (
        last_bill.payments.filter(status="completed").aggregate(
            total=models.Sum("amount")
        )["total"]
        or 0
    )

    is_paid = completed_sum >= last_bill.amount

    if is_paid and today >= last_bill.due_date:
        next_due = last_bill.due_date + timedelta(days=30)

        new_bill = Billing.objects.create(
            user=subscription.user,
            subscription=subscription,
            plan=subscription.plan,
            customer=f"{subscription.user.first_name} {subscription.user.last_name}",
            amount=subscription.amount,
            due_date=next_due,
        )

        send_bill_created(new_bill)


def send_bill_created(bill):
    subject = "Subscription Activated – Billing Details"

    message = f"""
    Hi {bill.user.first_name},

    Your subscription has been successfully activated.

    Plan: {bill.plan}
    Billing Amount: {bill.amount}
    Due Date: {bill.due_date}

    Please ensure payment is completed on or before the due date to avoid service interruption.

    If you have any questions regarding your subscription or billing, feel free to contact support.

    Thank you for choosing us!

    Best regards,
    The Billing Team
    """.strip()

    send_email(subject=subject, message=message, recipient_list=[bill.user.email])

    logger.info(f"[Billing] Created bill for Subscription {bill.subscription.id}")
