import logging
from django.utils import timezone
from sr_libs.delivery_channels.services.email import send_email

logger = logging.getLogger(__name__)


def send_due_reminder(bill, **kwargs):
    remaining = bill.due_date - timezone.now().date()

    subject = "Upcoming Bill Due"

    message = f"""
Hi {bill.user.first_name},

This is a friendly reminder that your bill is due soon.

Amount: {bill.amount}
Due Date: {bill.due_date}
Days Remaining: {remaining.days}

Please ensure payment is made before the due date to avoid service interruption.

Thank you,
Billing Team
""".strip()

    send_email(
        subject=subject,
        message=message,
        recipient_list=[bill.user.email],
    )

    logger.info(f"[Billing] Reminder sent for Bill {bill.id}")
