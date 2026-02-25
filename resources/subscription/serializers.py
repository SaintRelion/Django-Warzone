from rest_framework import serializers
from sr_libs.dal.serializers import DerivedSerializer
from .models import Subscription
from ..user.models import User

from sr_libs.dal.resource import register_resource, register_derived_resource


class UserSubscriptionDerivedSerializer(DerivedSerializer):

    # Optional: define filter fields if you want DRF to validate query params
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
                "plan",
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

        # Compose result
        result = []
        for s in subs:
            r = s.copy()
            r["user"] = r.pop("user_id")  # rename user_id → user
            r["name"] = users_map.get(r["user"], "")
            result.append(r)

        return result


register_resource(
    name="subscription",
    model=Subscription,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)

register_derived_resource(
    name="usersubscription",
    serializer=UserSubscriptionDerivedSerializer,
)
