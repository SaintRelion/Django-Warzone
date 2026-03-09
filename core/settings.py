from pathlib import Path
from dotenv import load_dotenv
import os

load_dotenv()

from sr_libs.authentication.settings import *

CORS_ALLOW_HEADERS = ["*"]
AUTHENTICATION_MIDDLEWARE = MIDDLEWARE

AUTHENTICATION_SIMPLE_JWT = SIMPLE_JWT
SIMPLE_JWT = {
    **AUTHENTICATION_SIMPLE_JWT,
    "ACCESS_TOKEN_LIFETIME": timedelta(minutes=300),
}
ACCOUNTS_REST_FRAMEWORK = REST_FRAMEWORK

AUTH_USER_MODEL = "accounts.User"

from sr_libs.audit_logger.settings import *

from sr_libs.delivery_channels.settings import *

EMAIL_HOST_USER = os.getenv("EMAIL_HOST_USER")
EMAIL_HOST_PASSWORD = os.getenv("EMAIL_HOST_PASSWORD")

SEMAPHORE_API_KEY = os.getenv("SEMAPHORE_API_KEY")
SEMAPHORE_SMS_SENDER_NAME = os.getenv("SEMAPHORE_SMS_SENDER_NAME")

DELIVERY_CHANNELS_REST_FRAMEWORK = REST_FRAMEWORK
# EVENTSTREAM_REDIS = {
#     "host": os.getenv("EVENTSTREAM_REDIS_HOST"),
#     "port": os.getenv("EVENTSTREAM_REDIS_PORT"),
#     "db": os.getenv("EVENTSTREAM_REDIS_DB"),
#     # "password": os.getenv("EVENTSTREAM_REDIS_PASSWORD", None),
# }

from sr_libs.model_trigger.settings import *

CELERY_BROKER_URL = os.getenv("CELERY_BROKER_URL")
CELERY_RESULT_BACKEND = os.getenv("CELERY_BROKER_URL")

from sr_libs.otp.settings import *

OTP_EXPIRY_SECONDS = int(os.getenv("OTP_EXPIRY_SECONDS"))
OTP_MAX_ATTEMPTS = int(os.getenv("OTP_MAX_ATTEMPTS"))

# TODO: fix this, na dugayan ta ani agi sa conflict
REST_FRAMEWORK = {
    **ACCOUNTS_REST_FRAMEWORK,
    "DEFAULT_AUTHENTICATION_CLASSES": [
        SR_LIBS_AUDIT_LOGGER_JWT_AUTHENTICATION,
        *ACCOUNTS_REST_FRAMEWORK["DEFAULT_AUTHENTICATION_CLASSES"],
    ],
    "DEFAULT_RENDERER_CLASSES": [
        *ACCOUNTS_REST_FRAMEWORK["DEFAULT_RENDERER_CLASSES"],
        *DELIVERY_CHANNELS_REST_FRAMEWORK["DEFAULT_RENDERER_CLASSES"],
    ],
}


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

# Application definition

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    # Third Parties
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

MIDDLEWARE = [
    *AUTHENTICATION_MIDDLEWARE,
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
