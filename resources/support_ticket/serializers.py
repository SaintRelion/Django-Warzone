from sr_libs.dal.resource import register_resource
from .models import SupportTicket

register_resource(
    name="supportticket",
    model=SupportTicket,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)
