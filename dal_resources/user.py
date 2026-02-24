from sr_libs.dal.resource import register_resource
from django.contrib.auth import get_user_model

User = get_user_model()

register_resource(
    name="user",
    model=User,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)
