from rest_framework import serializers
from sr_libs.dal.serializers import DerivedSerializer

from ..plan.models import Plan
from .models import Subscription
from ..user.models import User

from sr_libs.dal.resource import register_resource, register_derived_resource


class SubscriptionCreateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subscription
        fields = ["user", "plan", "address"]  # only allow frontend to pass these

    def create(self, validated_data):
        plan = validated_data["plan"]

        # automatically set amount from plan price
        validated_data["amount"] = plan.price

        # set next_billing_date to today + 1 month (example)
        from datetime import date, timedelta

        validated_data["next_billing_date"] = date.today() + timedelta(days=30)

        validated_data["status"] = "active"

        return super().create(validated_data)


register_resource(
    name="subscription",
    model=Subscription,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": SubscriptionCreateSerializer,
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)


class UserSubscriptionDerivedSerializer(DerivedSerializer):
    user_id = serializers.IntegerField(required=False)
    status = serializers.CharField(required=False)

    @classmethod
    def list_data(cls, filters):
        user_filter = filters.get("user_id")
        status_filter = filters.get("status")

        # Base queryset
        subs_qs = Subscription.objects.select_related("user")
        if user_filter:
            subs_qs = subs_qs.filter(user_id=user_filter)
        if status_filter:
            subs_qs = subs_qs.filter(status=status_filter)

        subs = list(
            subs_qs.values(
                "id",
                "user_id",
                "plan_id",
                "amount",
                "address",
                "status",
                "next_billing_date",
            )
        )

        # Prefetch users
        user_ids = {s["user_id"] for s in subs if s["user_id"]}
        users_qs = User.objects.filter(id__in=user_ids).values(
            "id", "first_name", "last_name"
        )
        users_map = {u["id"]: f"{u['first_name']} {u['last_name']}" for u in users_qs}

        plan_ids = {s["plan_id"] for s in subs if s["plan_id"]}
        plans_qs = Plan.objects.filter(id__in=plan_ids).values(
            "id", "name", "price", "speed_mbps", "description"
        )
        plans_map = {p["id"]: p for p in plans_qs}

        # Compose result
        result = []
        for s in subs:
            r = s.copy()
            # map user
            r["user"] = r.pop("user_id")
            r["name"] = users_map.get(r["user"], "")
            # map plan
            r["plan"] = plans_map.get(r["plan_id"], {})
            r.pop("plan_id", None)
            result.append(r)

        return result


register_derived_resource(
    name="usersubscription",
    serializer=UserSubscriptionDerivedSerializer,
)
