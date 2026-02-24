from django.db import models
from sr_libs.dal.resource import register_resource
from sr_libs.dal.derived import register_derived_resource
from sr_libs.dal.mixins import ArchiveMixin

from dal_resources.subscription_resolver import user_subscription_resolver


class Subscription(ArchiveMixin):
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE)
    plan = models.CharField(max_length=100)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    address = models.TextField()
    status = models.CharField(max_length=50)
    next_billing_date = models.DateField()


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
    resolver=user_subscription_resolver,
    operations={
        "list": True,  # read-only endpoint
    },
)
