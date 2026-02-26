from django.contrib import admin
from django.urls import include, path

from otp_sms.views import SendSMSOTP, VerifySMSOTP

urlpatterns = [
    path("admin/", admin.site.urls),
    # Client Specific
    path("api/otp/send_sms/", SendSMSOTP.as_view(), name="send-sms-otp"),
    path("api/otp/verify_sms/", VerifySMSOTP.as_view(), name="verify-sms-otp"),
    # Services
    path("api/auth/", include("sr_libs.authentication.urls")),
    path("api/otp/", include("sr_libs.otp.urls")),
    # DAL
    path("api/", include("sr_libs.dal.urls")),
]
