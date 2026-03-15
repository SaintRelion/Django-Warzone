from datetime import timedelta
import logging
from django.utils import timezone
from django.db import models
from sr_libs.delivery_channels.services.email import send_email

logger = logging.getLogger(__name__)


def notify_bill_status(bill):
    today = timezone.now().date()

    due_date = bill.due_date
    cutoff_date = due_date + timedelta(days=5)
    reminder_date = due_date - timedelta(days=3)

    completed_sum = (
        bill.payments.filter(status="completed").aggregate(total=models.Sum("amount"))[
            "total"
        ]
        or 0
    )

    is_paid = completed_sum >= bill.amount

    if is_paid:
        return

    if today >= reminder_date and today < due_date:
        send_due_reminder(bill)

    elif today >= due_date and today < cutoff_date:
        send_overdue_notice(bill)

    elif today >= cutoff_date:
        notify_service_cutoff(bill)


def send_due_reminder(bill):
    today = timezone.now().date()
    remaining = bill.due_date - today

    subject = "Upcoming Bill Due"

    message = f"""
Hi {bill.user.first_name},

This is a friendly reminder that your bill will be due soon.

Amount: {bill.amount}
Due Date: {bill.due_date}
Days Remaining: {remaining.days}

Please ensure payment is made before the due date.

Thank you,
Billing Team
""".strip()

    send_email(
        subject=subject,
        message=message,
        recipient_list=[bill.user.email],
    )

    logger.info(f"[Billing] Upcoming reminder sent for Bill {bill.id}")


def send_overdue_notice(bill):
    today = timezone.now().date()
    overdue_days = (today - bill.due_date).days

    subject = "Bill Payment Overdue"

    message = f"""
Hi {bill.user.first_name},

Your bill payment is now overdue.

Amount: {bill.amount}
Due Date: {bill.due_date}
Days Overdue: {overdue_days}

Please make payment immediately to avoid service interruption.

Thank you,
Billing Team
""".strip()

    send_email(
        subject=subject,
        message=message,
        recipient_list=[bill.user.email],
    )

    logger.warning(f"[Billing] Overdue notice sent for Bill {bill.id}")


def notify_service_cutoff(bill):
    subject = "Service Suspension Notice"

    message = f"""
Hi {bill.user.first_name},

Your bill remains unpaid and your service will now be suspended.

Amount Due: {bill.amount}
Original Due Date: {bill.due_date}

Please settle the outstanding balance to restore service.

If you have already made a payment, please ignore this message.

Thank you,
Billing Team
""".strip()

    send_email(
        subject=subject,
        message=message,
        recipient_list=[bill.user.email],
    )

    logger.error(f"[Billing] Service cutoff notice sent for Bill {bill.id}")
