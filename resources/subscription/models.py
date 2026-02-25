from django.db import models
from sr_libs.dal.mixins import ArchiveMixin


class Subscription(ArchiveMixin):
    STATUS_CHOICES = [
        ("active", "Active"),
        ("disabled", "Disabled"),
    ]
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE)
    plan = models.CharField(max_length=100)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    address = models.TextField()
    status = models.CharField(max_length=50, choices=STATUS_CHOICES)
    next_billing_date = models.DateField()
