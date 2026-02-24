from django.db import models
from sr_libs.dal.resource import register_resource
from sr_libs.dal.derived import register_derived_resource
from sr_libs.dal.mixins import ArchiveMixin

from dal_resources.billing_resolver import user_billing_resolver
from dal_resources.subscription import Subscription


class Billing(ArchiveMixin):
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE)
    subscription = models.ForeignKey(Subscription, on_delete=models.CASCADE)
    plan = models.CharField(max_length=100)  # plan ID or name
    customer = models.CharField(max_length=255)  # customer name
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    due_date = models.DateField()
    created_at = models.DateTimeField(auto_now_add=True)


register_resource(
    name="billing",
    model=Billing,
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
    name="userbilling",
    resolver=user_billing_resolver,
    operations={
        "list": True,  # read-only endpoint
    },
)
