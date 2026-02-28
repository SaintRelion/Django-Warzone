from sr_libs.otp.models import OTP
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.contrib.auth import get_user_model
from django.db.models import Q
from django.conf import settings

from otp_sms.utils import create_sms_otp, send_sms_otp
from sr_libs.authentication.models import UserDevice

User = get_user_model()


class SendSMSOTP(APIView):
    permission_classes = []

    def post(self, request):
        identifier = request.data.get("username") or request.data.get("email")

        if not identifier:
            return Response(
                {"detail": "Username or email required."},
                status=status.HTTP_400_BAD_REQUEST,
            )

        try:
            user = User.objects.get(Q(username=identifier) | Q(email=identifier))
        except User.DoesNotExist:
            return Response(
                {"detail": "User not found."},
                status=status.HTTP_404_NOT_FOUND,
            )

        device_id = request.headers.get("X-Device-ID")
        user_agent = request.META.get("HTTP_USER_AGENT")
        ip_address = request.META.get("REMOTE_ADDR")

        device = None
        is_trusted = False

        if device_id:
            device = UserDevice.objects.filter(
                user=user, user_agent=user_agent, ip_address=ip_address
            ).first()

            if device:
                is_trusted = device.is_trusted

        # ✅ If trusted device → no OTP needed
        if is_trusted:
            return Response(
                {"is_trusted": True, "detail": "Trusted device. OTP not required."},
                status=status.HTTP_200_OK,
            )

        # Create OTP using your existing function
        otp = create_sms_otp(user)

        # Send SMS
        try:
            send_sms_otp(user, otp)
        except Exception as e:
            return Response(
                {"detail": f"Failed to send SMS: {str(e)}"},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )

        return Response(
            {
                "otp_id": otp.id,
                "expires_at": otp.expires_at,
                "type": otp.type,
                "detail": "OTP sent successfully.",
            },
            status=status.HTTP_200_OK,
        )


class VerifySMSOTP(APIView):
    permission_classes = []

    def post(self, request):
        otp_id = request.data.get("otp_id")
        code = request.data.get("code")

        if not otp_id or not code:
            return Response(
                {"error": "otp_id and code required"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        try:
            otp = OTP.objects.get(id=otp_id, type="sms")
        except OTP.DoesNotExist:
            return Response(
                {"error": "OTP not found"},
                status=status.HTTP_404_NOT_FOUND,
            )

        # Already verified
        if otp.verified:
            return Response(
                {"error": "OTP already verified"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        # Expiry check (equivalent to time.time() > expiry_time)
        if otp.is_expired():
            return Response(
                {"error": "OTP expired"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        # Max attempts check (equivalent to while attempts < MAX_ATTEMPTS)
        max_attempts = getattr(settings, "OTP_MAX_ATTEMPTS", 3)

        if otp.attempt_count >= max_attempts:
            return Response(
                {"error": "Maximum attempts reached. Access denied."},
                status=status.HTTP_403_FORBIDDEN,
            )

        # Increase attempt count
        otp.attempt_count += 1

        if otp.code == code:
            otp.verified = True
            otp.save(update_fields=["verified", "attempt_count"])
            return Response({"success": True})

        otp.save(update_fields=["attempt_count"])

        return Response(
            {
                "error": "Invalid OTP",
                "attempts_left": max_attempts - otp.attempt_count,
            },
            status=status.HTTP_400_BAD_REQUEST,
        )
