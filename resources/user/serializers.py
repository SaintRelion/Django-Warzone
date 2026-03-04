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
    def list_data(cls, filters):
        users = User.objects.exclude(
            Q(groups__name="admin") | Q(status="archived")
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

        return list(users)


register_derived_resource(
    name="usersubscribers", serializer=UserSubscribersDerivedSerializer
)
