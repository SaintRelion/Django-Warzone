from sr_libs.delivery_channels.services.email import send_email
import logging

logger = logging.getLogger(__name__)


def create_initial_billing(subscription):
    from ..billing.models import Billing

    # set next_billing_date to today + 1 month (example)
    from datetime import date, timedelta

    existing_future_bill = Billing.objects.filter(
        subscription_id=subscription.id, due_date__gte=date.today()
    ).exists()

    if not existing_future_bill:
        next_billing_date = date.today() + timedelta(days=30)
        Billing.objects.create(
            user=subscription.user,
            subscription=subscription,
            plan=subscription.plan,
            customer=f"{subscription.user.first_name} Hello {subscription.user.last_name}",
            amount=subscription.amount,
            due_date=next_billing_date,
        )

        subject = "Subscription Activated – Billing Details"

        message = f"""
    Hi {subscription.user.first_name},

    Your subscription has been successfully activated.

    Plan: {subscription.plan}
    Billing Amount: {subscription.amount}
    Due Date: {next_billing_date}

    Please ensure payment is completed on or before the due date to avoid service interruption.

    If you have any questions regarding your subscription or billing, feel free to contact support.

    Thank you for choosing us!

    Best regards,
    The Billing Team
    """.strip()

        send_email(
            subject=subject, message=message, recipient_list=[subscription.user.email]
        )

        logger.info(
            f"[Billing] Created initial bill for Subscription {subscription.id}"
        )
