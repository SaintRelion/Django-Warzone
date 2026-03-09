from django.contrib import admin
from django.urls import include, path

from resources.reports.views import MonthlyPaymentReportView

urlpatterns = [
    path("admin/", admin.site.urls),
    # Services
    path("api/auth/", include("sr_libs.authentication.urls")),
    path("api/otp/", include("sr_libs.otp.urls")),
    path("api/", include("sr_libs.audit_logger.urls")),
    # path("api/", include("sr_libs.delivery_channels.urls")),
    path(
        "api/monthlypaymentreport/",
        MonthlyPaymentReportView.as_view(),
        name="monthlypaymentreport",
    ),
    # DAL
    path("api/", include("sr_libs.dal.urls")),
]
