from django.apps import AppConfig


class ResourcesConfig(AppConfig):
    default_auto_field = "django.db.models.BigAutoField"
    name = "resources"

    def ready(self):
        from sr_libs.model_trigger.signals import setup_model_signals

        # Serializers
        import resources.activity_log.serializers
        import resources.billing.serializers
        import resources.payment_history.serializers
        import resources.subscription.serializers
        import resources.support_ticket.serializers
        import resources.user.serializers
        import resources.plan.serializers

        # Triggers
        import resources.subscription.triggers
        import resources.billing.triggers

        setup_model_signals()
