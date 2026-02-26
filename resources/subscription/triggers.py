from sr_libs.model_trigger.registry import registry, ReactiveRule
from .models import Subscription

registry.register(
    model=Subscription,
    reactive_rules=[
        ReactiveRule(
            name="create_initial_billing",
            condition=lambda inst, created: created,
            action_path="resources.subscription.actions.create_initial_billing",
        )
    ],
)
