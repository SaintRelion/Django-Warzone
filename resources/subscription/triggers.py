from sr_libs.model_trigger.registry import ScheduledRule, registry

from datetime import timedelta
from django.utils import timezone
from .models import Subscription

registry.register(
    model=Subscription,
    scheduled_rules=[
        ScheduledRule(
            name="auto_generate_bill",
            monitor_condition=lambda sub: sub.status == "active",
            scheduled_at=lambda sub: timezone.now(),
            action_path="resources.subscription.actions.auto_generate_bill",
            repeat_every=timedelta(days=5),
        )
    ],
)
