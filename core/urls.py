from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("admin/", admin.site.urls),
    # Services
    path("api/auth/", include("sr_libs.authentication.urls")),
    path("api/otp/", include("sr_libs.otp.urls")),
    # DAL
    path("api/", include("sr_libs.dal.urls")),
]
