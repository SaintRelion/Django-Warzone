from sr_libs.model_trigger.registry import registry, ReactiveRule, ScheduledRule
from .models import Billing

from datetime import timedelta
from django.utils import timezone


def is_bill_paid(bill):
    payments = bill.payments.filter(status="Completed")

    total_paid = sum(p.amount for p in payments)
    return total_paid >= bill.amount


registry.register(
    model=Billing,
    scheduled_rules=[
        ScheduledRule(
            name="notify_upcoming_due",
            monitor_condition=lambda bill: True,  # monitor all bills
            scheduled_at=lambda bill: timezone.now() - timedelta(minutes=2),
            action_path="resources.billing.actions.send_due_reminder",
            repeat_every=timedelta(minutes=5),
            stop_condition=lambda bill: is_bill_paid(bill),
        )
    ],
)
