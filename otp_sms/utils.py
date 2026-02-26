from sr_libs.otp.models import OTP
from django.utils import timezone
from django.conf import settings

import requests
from datetime import timedelta
import random


def generate_otp_code(length=6):
    """Generate numeric OTP"""
    return "".join(str(random.randint(0, 9)) for _ in range(length))


def create_sms_otp(user, ttl_seconds=None, extra_info=None):

    ttl = ttl_seconds or getattr(settings, "OTP_EXPIRY_SECONDS", 300)

    code = generate_otp_code()

    otp = OTP.objects.create(
        user=user,
        code=code,
        type="sms",
        expires_at=timezone.now() + timedelta(seconds=ttl),
        additional_info=extra_info or {},
    )

    return otp


def send_sms_otp(user, otp):
    """
    Sends OTP via Semaphore SMS API
    """

    if not user.phone_number:
        raise ValueError("User has no phone number.")

    message = (
        f"Warzone Fiber: Your OTP is {otp.code}.\n"
        "New device login detected. Do not share."
    )

    payload = {
        "apikey": getattr(settings, "API_KEY", ""),
        "sendername": getattr(settings, "SMS_SENDER_NAME", ""),
        "message": message,
        "number": user.phone_number,
    }

    response = requests.post(
        "https://semaphore.co/api/v4/messages",
        data=payload,
    )

    response.raise_for_status()
    return True
