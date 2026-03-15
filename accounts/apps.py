from django.apps import AppConfig


class AccountsConfig(AppConfig):
    name = "accounts"

    def ready(self):
        from .serializer import UserRegisterSerializer, MeSerializer
