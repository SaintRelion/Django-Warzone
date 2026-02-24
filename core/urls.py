from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("admin/", admin.site.urls),
    # Services
    path("api/auth/", include("sr_libs.accounts.urls")),
    path("api/device/", include("sr_libs.fingerprint.urls")),
    path("api/otp_sms/", include("sr_libs.otp_sms.urls")),
    # DAL
    path("api/", include("sr_libs.dal.urls")),
]
