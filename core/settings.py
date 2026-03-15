from pathlib import Path
from datetime import timedelta
from dotenv import load_dotenv
import os

load_dotenv()

from sr_libs.authentication.config import SRAuthenticationConfig

SR_AUTHENTICATION_CONFIG = SRAuthenticationConfig(
    ACCOUNT_STATUS_MESSAGE={
        "disabled": "Your account has been disabled by the admin.",
        "deactivated": "Your account has been deactivated by the admin.",
    }
)

from sr_libs.dal.config import SRDALConfig

SR_DAL_CONFIG = SRDALConfig(PAGE_SIZE=800)

from sr_libs.delivery_channels.config import SRDeliveryChannelsConfig

SR_DELIVERY_CHANNELS_CONFIG = SRDeliveryChannelsConfig(
    EMAIL_HOST_USER=os.getenv("EMAIL_HOST_USER"),
    EMAIL_HOST_PASSWORD=os.getenv("EMAIL_HOST_PASSWORD"),
    DEFAULT_FROM_EMAIL=os.getenv("EMAIL_HOST_USER"),
    SEMAPHORE_API_KEY=os.getenv("SEMAPHORE_API_KEY"),
    SEMAPHORE_SMS_SENDER_NAME=os.getenv("SEMAPHORE_SMS_SENDER_NAME"),
)

EMAIL_BACKEND = SR_DELIVERY_CHANNELS_CONFIG.EMAIL_BACKEND
EMAIL_HOST = SR_DELIVERY_CHANNELS_CONFIG.EMAIL_HOST
EMAIL_USE_TLS = SR_DELIVERY_CHANNELS_CONFIG.EMAIL_USE_TLS
EMAIL_PORT = SR_DELIVERY_CHANNELS_CONFIG.EMAIL_PORT
EMAIL_HOST_USER = SR_DELIVERY_CHANNELS_CONFIG.EMAIL_HOST_USER
EMAIL_HOST_PASSWORD = SR_DELIVERY_CHANNELS_CONFIG.EMAIL_HOST_PASSWORD


# EVENTSTREAM_REDIS = {
#     "host": os.getenv("EVENTSTREAM_REDIS_HOST"),
#     "port": os.getenv("EVENTSTREAM_REDIS_PORT"),
#     "db": os.getenv("EVENTSTREAM_REDIS_DB"),
#     # "password": os.getenv("EVENTSTREAM_REDIS_PASSWORD", None),
# }

from sr_libs.model_trigger.config import SRModelTriggerConfig

SR_MODEL_TRIGGER_CONFIG = SRModelTriggerConfig(
    CELERY_BROKER_URL=os.getenv("CELERY_BROKER_URL"),
    CELERY_RESULT_BACKEND=os.getenv("CELERY_BROKER_URL"),
)
CELERY_BROKER_URL = SR_MODEL_TRIGGER_CONFIG.CELERY_BROKER_URL
CELERY_RESULT_BACKEND = SR_MODEL_TRIGGER_CONFIG.CELERY_RESULT_BACKEND

from sr_libs.otp.config import SROTPConfig

SR_OTP_CONFIG = SROTPConfig(
    OTP_EXPIRY_SECONDS=int(os.getenv("OTP_EXPIRY_SECONDS")),
    OTP_MAX_ATTEMPTS=int(os.getenv("OTP_MAX_ATTEMPTS")),
)


## ====== Start of Django Settings =====

# ============== DJANGO DEFAULTS ================
# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/6.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.getenv("SECRET_KEY")

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ["*"]
CORS_ALLOW_ALL_ORIGINS = SR_AUTHENTICATION_CONFIG.CORS_ALLOW_ALL_ORIGINS
CORS_ALLOW_HEADERS = ["*"]

# Application definition

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    # Third Parties
    "django_filters",
    "rest_framework",
    "rest_framework_simplejwt",
    "rest_framework_simplejwt.token_blacklist",
    # Third parties
    "sr_libs.authentication",
    "sr_libs.otp",
    "sr_libs.delivery_channels",
    "sr_libs.dal",
    "sr_libs.model_trigger",
    "sr_libs.audit_logger",
    "accounts",
    "resources",
]

AUTH_USER_MODEL = "accounts.User"

SIMPLE_JWT = {
    "ACCESS_TOKEN_LIFETIME": timedelta(minutes=300),
    "REFRESH_TOKEN_LIFETIME": SR_AUTHENTICATION_CONFIG.REFRESH_TOKEN_LIFETIME,
    "ROTATE_REFRESH_TOKENS": SR_AUTHENTICATION_CONFIG.ROTATE_REFRESH_TOKENS,
    "BLACKLIST_AFTER_ROTATION": SR_AUTHENTICATION_CONFIG.BLACKLIST_AFTER_ROTATION,
    "AUTH_HEADER_TYPES": SR_AUTHENTICATION_CONFIG.AUTH_HEADER_TYPES,
}

REST_FRAMEWORK = {
    "DEFAULT_AUTHENTICATION_CLASSES": SR_AUTHENTICATION_CONFIG.DEFAULT_AUTHENTICATION_CLASSES,
    "DEFAULT_PERMISSION_CLASSES": SR_AUTHENTICATION_CONFIG.DEFAULT_PERMISSION_CLASSES,
    "DEFAULT_RENDERER_CLASSES": [
        *SR_AUTHENTICATION_CONFIG.DEFAULT_RENDERER_CLASSES,
        # *SR_DELIVERY_CHANNELS_CONFIG.EVENTSTREAM_DEFAULT_RENDERERS
    ],
    "DEFAULT_PAGINATION_CLASS": SR_DAL_CONFIG.DEFAULT_PAGINATION_CLASS,
    "PAGE_SIZE": SR_DAL_CONFIG.PAGE_SIZE,
    "DEFAULT_FILTER_BACKENDS": SR_DAL_CONFIG.DEFAULT_FILTER_BACKENDS,
}

AUTHENTICATION_BACKENDS = SR_AUTHENTICATION_CONFIG.AUTHENTICATION_BACKENDS


MIDDLEWARE = [
    *SR_AUTHENTICATION_CONFIG.MIDDLEWARE,
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "core.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "core.wsgi.application"


# Database
# https://docs.djangoproject.com/en/6.0/ref/settings/#databases

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": os.getenv("DB_NAME"),
        "USER": os.getenv("DB_USER"),
        "PASSWORD": os.getenv("DB_PASSWORD"),
        "HOST": os.getenv("DB_HOST"),
        "PORT": os.getenv("DB_PORT"),
    }
}


# Password validation
# https://docs.djangoproject.com/en/6.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]


# Internationalization
# https://docs.djangoproject.com/en/6.0/topics/i18n/

LANGUAGE_CODE = "en-us"

TIME_ZONE = "UTC"

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/6.0/howto/static-files/

STATIC_URL = "static/"
