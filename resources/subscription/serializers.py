from rest_framework import serializers
from sr_libs.dal.serializers import DerivedSerializer
from sr_libs.delivery_channels.services.live import send_live

from .models import Subscription

from sr_libs.dal.resource import register_resource, register_derived_resource


class SubscriptionCreateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subscription
        fields = ["user", "plan", "address"]  # only allow frontend to pass these

    def create(self, validated_data):
        plan = validated_data["plan"]

        # automatically set amount from plan price
        validated_data["amount"] = plan.price
        validated_data["status"] = "pending"

        # subscription = super().create(validated_data)

        # send_live(
        #     subscription.user,
        #     event="subscription_waiting_approval",
        #     data={
        #         "id": subscription.id,
        #         "plan": subscription.plan.name,
        #         "status": subscription.status,
        #     },
        # )

        return super().create(validated_data)


class SubscriptionUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subscription
        fields = ["status"]

    def update(self, instance, validated_data):
        instance = super().update(instance, validated_data)

        send_live(
            instance.user,
            {
                "id": instance.id,
                "resource": "usersubscription",
                "plan": instance.plan.name,
                "status": instance.status,
                "message": f"Your subscription status has been updated to {instance.status}",
            },
        )
        return instance


register_resource(
    name="subscription",
    model=Subscription,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": SubscriptionCreateSerializer,
        "update": SubscriptionUpdateSerializer,
        "delete": False,
        "archive": True,
    },
)


class UserSubscriptionDerivedSerializer(DerivedSerializer):
    user = serializers.IntegerField(required=False)
    status = serializers.CharField(required=False)

    @classmethod
    def list_data(cls, filters):
        user_filter = filters.get("user")
        status_filter = filters.get("status")

        qs = Subscription.objects.select_related("user", "plan")
        if user_filter:
            qs = qs.filter(user=user_filter)

        if status_filter:
            qs = qs.filter(status=status_filter)

        results = []
        for sub in qs:
            results.append(
                {
                    "id": sub.id,
                    "user": sub.user.id if sub.user else None,
                    "name": (
                        f"{sub.user.first_name} {sub.user.last_name}"
                        if sub.user
                        else ""
                    ),
                    "plan": (
                        {
                            "id": sub.plan.id,
                            "name": sub.plan.name,
                            "price": sub.plan.price,
                            "speed_mbps": sub.plan.speed_mbps,
                            "description": sub.plan.description,
                        }
                        if sub.plan
                        else None
                    ),
                    "amount": sub.amount,
                    "address": sub.address,
                    "status": sub.status,
                }
            )

        return results


register_derived_resource(
    name="usersubscription",
    serializer=UserSubscriptionDerivedSerializer,
)
