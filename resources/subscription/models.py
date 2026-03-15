from django.db import models
from sr_libs.dal.mixins import ArchiveMixin
from sr_libs.audit_logger.mixins import AuditMixin

from ..plan.models import Plan


class Subscription(AuditMixin, ArchiveMixin):
    class Meta:
        ordering = ["id"]

    STATUS_CHOICES = [
        ("pending", "Pending Approval"),
        ("active", "Active"),
        ("suspended", "Suspended"),
        ("cancelled", "Cancelled"),
    ]
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE)
    plan = models.ForeignKey(
        Plan, on_delete=models.PROTECT, related_name="subscriptions"
    )
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    address = models.TextField()
    status = models.CharField(max_length=50, choices=STATUS_CHOICES)
