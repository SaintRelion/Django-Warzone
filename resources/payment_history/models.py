from django.db import models
from sr_libs.dal.mixins import ArchiveMixin
from ..billing.models import Billing


class PaymentHistory(ArchiveMixin):
    # FK to Billing
    bill = models.ForeignKey(Billing, on_delete=models.CASCADE, related_name="payments")

    # FK to User
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE)

    # Customer display name (string)
    customer = models.CharField(max_length=255)

    # Payment method (string)
    method = models.CharField(max_length=100)

    # Amount, change, credit (decimal)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    change = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    credit = models.DecimalField(max_digits=10, decimal_places=2, default=0)

    # Optional: store a file or URL for the screenshot
    transaction_screenshot = models.TextField(blank=True, null=True)

    # Transaction reference
    transaction_ref = models.CharField(max_length=255, blank=True)

    # The “due date” at the time of payment
    next_billing_date = models.DateField()

    # Creation timestamp
    created_at = models.DateTimeField(auto_now_add=True)

    # Status (Completed, Pending, Failed, etc.)
    status = models.CharField(max_length=50)

    # Optional void info
    voided_at = models.DateTimeField(blank=True, null=True)
    voided_reason = models.TextField(blank=True, null=True)

    class Meta:
        ordering = ["-created_at"]

    def __str__(self):
        return f"Payment {self.id} for Bill {self.bill_id} by User {self.user_id}"
