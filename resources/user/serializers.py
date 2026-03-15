from sr_libs.dal.resource import register_derived_resource, register_resource
from sr_libs.dal.serializers import DerivedSerializer
from django.db.models import Q
from .models import User

register_resource(
    name="user",
    model=User,
    operations={
        "list": [
            "id",
            "email",
            "first_name",
            "last_name",
            "phone_number",
            "street_address",
            "city_municipality",
            "barangay",
            "zip_code",
            "service_area",
            "status",
        ],
        "retrieve": [
            "id",
            "email",
            "first_name",
            "last_name",
            "phone_number",
            "street_address",
            "city_municipality",
            "barangay",
            "zip_code",
            "service_area",
            "status",
        ],
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)


class UserSubscribersDerivedSerializer(DerivedSerializer):
    @classmethod
    def get_queryset(cls, filters):
        qs = User.objects.exclude(
            Q(status="archived")
            | Q(groups__name="admin")
            | Q(is_staff=True)
            | Q(is_superuser=True)
        ).values(
            "id",
            "email",
            "first_name",
            "last_name",
            "phone_number",
            "street_address",
            "city_municipality",
            "barangay",
            "zip_code",
            "service_area",
            "status",
        )

        return qs

    @classmethod
    def list_data(cls, queryset):
        return list(queryset)


register_derived_resource(
    name="usersubscribers", serializer=UserSubscribersDerivedSerializer
)
