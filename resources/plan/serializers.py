from sr_libs.dal.resource import register_resource
from rest_framework.permissions import AllowAny
from ..plan.models import Plan


register_resource(
    name="plan",
    model=Plan,
    operations={
        "list": "__all__",
        "retrieve": "__all__",
        "create": False,
        "update": False,
        "delete": False,
        "archive": False,
    },
    public={"list": [AllowAny]},
)
