from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status

from resources.reports.serializer import MonthlyPaymentReportDerivedSerializer


class MonthlyPaymentReportView(APIView):
    def get(self, request):
        month = int(request.query_params.get("month", 0))
        year = int(request.query_params.get("year", 0))
        status_filter = request.query_params.get("status", "all")

        if not month or not year:
            return Response(
                {"detail": "Month and year required"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        filters = {"month": month, "year": year, "status": status_filter}
        report = MonthlyPaymentReportDerivedSerializer.list_data(filters)

        return Response(report[0] if report else {}, status=status.HTTP_200_OK)
