from django.db import models


class ActivityLog(models.Model):
    STATUS_CHOICES = [
        ("success", "Success"),
        ("failure", "Failure"),
        ("pending", "Pending"),
    ]

    CATEGORY_CHOICES = [
        ("user_management", "User Management"),
        ("billing", "Billing"),
        ("subscription", "Subscription"),
        ("support", "Support Ticket"),
        ("reports", "Reports"),
    ]

    ACTION_CHOICES = [
        ("create", "Create"),
        ("update", "Update"),
        ("delete", "Delete"),
        ("login", "Login"),
        ("logout", "Logout"),
        ("other", "Other"),
    ]

    # core fields
    user = models.ForeignKey(
        "accounts.User",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="activity_logs",
    )
    full_name = models.CharField(max_length=255, blank=True, null=True)
    role = models.CharField(max_length=100, blank=True, null=True)

    action = models.CharField(max_length=50, choices=ACTION_CHOICES)
    category = models.CharField(max_length=50, choices=CATEGORY_CHOICES)
    description = models.TextField(blank=True, null=True)

    ip_address = models.GenericIPAddressField(blank=True, null=True)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES)

    additional_info = models.JSONField(default=dict, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        user_str = self.full_name or (
            self.user.username if self.user else "Unknown User"
        )
        return f"[{self.created_at}] {user_str} - {self.action}"
