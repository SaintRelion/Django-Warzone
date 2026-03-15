from sr_libs.model_trigger.registry import registry, ScheduledRule
from .models import Billing

from datetime import timedelta
from django.db import models
from django.utils import timezone


def should_stop_bill_monitoring(bill):
    completed_sum = (
        bill.payments.filter(status="completed").aggregate(total=models.Sum("amount"))[
            "total"
        ]
        or 0
    )

    is_paid = completed_sum >= bill.amount
    return is_paid


registry.register(
    model=Billing,
    scheduled_rules=[
        ScheduledRule(
            name="notify_bill_status",
            monitor_condition=lambda bill: True,  # monitor all bills
            scheduled_at=lambda bill: timezone.now() + timedelta(days=20),
            action_path="resources.billing.actions.notify_bill_status",
            repeat_every=timedelta(days=5),
            # stop_condition=lambda bill: should_stop_bill_monitoring(bill),
        )
    ],
)
