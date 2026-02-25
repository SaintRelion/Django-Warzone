from sr_libs.dal.resource import register_resource
from .models import PaymentHistory

register_resource(
    name="paymenthistory",
    model=PaymentHistory,
    operations={
        "list": True,
        "retrieve": "__all__",
        "create": "__all__",
        "update": "__all__",
        "delete": False,
        "archive": True,
    },
)
