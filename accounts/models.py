from django.contrib.auth.models import AbstractUser
from django.db import models


class User(AbstractUser):
    # Core contact fields
    email = models.EmailField(unique=True)
    phone_number = models.CharField(max_length=20, blank=True)

    # Service address fields
    street_address = models.CharField(max_length=255, blank=True)
    city_municipality = models.CharField(max_length=255, blank=True)
    barangay = models.CharField(max_length=255, blank=True)
    zip_code = models.CharField(max_length=20, blank=True)

    # Service area — assuming you have predefined choices
    SERVICE_AREA_CHOICES = [
        ("katipunan", "Katipunan"),
        ("roxas", "Roxas"),
        ("piñan", "Piñan"),
        ("osmeña", "Osmeña"),
        ("polanco", "Polanco"),
    ]
    service_area = models.CharField(
        max_length=50, choices=SERVICE_AREA_CHOICES, blank=True
    )

    # Optional: override first_name/last_name length if needed
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)

    # You inherit username, password, is_staff, is_superuser, groups, user_permissions, last_login, date_joined

    def __str__(self):
        return self.username or self.email
