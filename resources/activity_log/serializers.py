from sr_libs.dal.resource import register_resource

from .models import ActivityLog

register_resource(
    name="activitylog",
    model=ActivityLog,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)
