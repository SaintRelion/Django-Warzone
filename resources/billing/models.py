from django.db import models
from sr_libs.dal.mixins import ArchiveMixin

from ..plan.models import Plan

from ..subscription.models import Subscription


class Billing(ArchiveMixin):
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE)
    subscription = models.ForeignKey(Subscription, on_delete=models.CASCADE)
    plan = models.ForeignKey(Plan, on_delete=models.PROTECT, related_name="bills")
    customer = models.CharField(max_length=255)  # customer name
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    due_date = models.DateField()
    created_at = models.DateTimeField(auto_now_add=True)
