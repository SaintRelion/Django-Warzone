from decimal import Decimal

from sr_libs.dal.serializers import DerivedSerializer
from rest_framework import serializers
from datetime import datetime, timedelta, timezone

from resources.billing.serializers import UserBillingDerivedSerializer


class MonthlyPaymentReportDerivedSerializer(DerivedSerializer):
    month = serializers.IntegerField(required=True)
    year = serializers.IntegerField(required=True)
    status = serializers.ChoiceField(
        choices=["paid", "partially_paid", "unpaid", "overdue", "all"],
        required=False,
        default="all",
    )

    @staticmethod
    def get_month_range(month, year):
        start_date = datetime(year, month, 1, 0, 0, 0, tzinfo=timezone.utc)
        # Last day of month at 23:59:59.999999
        if month == 12:
            end_date = datetime(
                year + 1, 1, 1, 0, 0, 0, tzinfo=timezone.utc
            ) - timedelta(microseconds=1)
        else:
            end_date = datetime(
                year, month + 1, 1, 0, 0, 0, tzinfo=timezone.utc
            ) - timedelta(microseconds=1)
        return start_date, end_date

    @classmethod
    def list_data(cls, filters):
        month = filters.get("month")
        year = filters.get("year")
        status_filter = filters.get("status", "all")

        if not month or not year:
            return []

        start_date, end_date = cls.get_month_range(month + 1, year)

        # Pull all user billings from the derived resource
        user_billings_qs = UserBillingDerivedSerializer.get_queryset(filters={})
        user_billings = UserBillingDerivedSerializer.list_data(user_billings_qs)

        # Filter by month
        bills_for_month = [
            b
            for b in user_billings
            if start_date <= b["created_at"] <= end_date  # no replace needed
        ]

        # Filter by status if provided
        if status_filter != "all":
            bills_for_month = [
                b for b in bills_for_month if b["status"] == status_filter
            ]

        items = []
        for billing in bills_for_month:
            user = billing["user"]
            items.append(
                {
                    "user": user["id"] if user else None,
                    "full_name": (
                        f"{user['first_name']} {user['last_name']}"
                        if user
                        else billing["customer"]
                    ),
                    "email": user["email"] if user else "N/A",
                    "phone_number": user["phone_number"] if user else "",
                    "billing_amount": str(billing["amount"]),
                    "total_paid": str(billing["total_paid"]),
                    "total_change_given_back": billing["total_change_given_back"],
                    "total_credits": billing["total_credits"],
                    "status": billing["status"],
                    "plan": billing["plan"]["name"] if billing["plan"] else "",
                    "overdue": f"{billing["overdue"]}",
                }
            )

        total_billable = sum(float(b["amount"]) for b in bills_for_month)
        total_revenue = sum(
            float(b["amount"]) for b in bills_for_month if b["status"] == "paid"
        )
        total_unpaid = sum(
            float(b["amount"]) for b in bills_for_month if b["status"] != "paid"
        )

        summary = {
            "total_subscribers": len(items),
            "paid_subscribers": sum(1 for i in items if i["status"] == "paid"),
            "unpaid_subscribers": sum(1 for i in items if i["status"] != "paid"),
            "collection_rate": (
                round((total_revenue / total_billable) * 100) if total_billable else 0
            ),
            "total_collected": float(sum(Decimal(i["total_paid"]) for i in items)),
            "total_change_given_back": float(
                sum(Decimal(i["total_change_given_back"]) for i in items)
            ),
            "total_credits": float(sum(Decimal(i["total_credits"]) for i in items)),
        }

        summary["net_revenue"] = (
            summary["total_collected"]
            - summary["total_change_given_back"]
            - summary["total_credits"]
        )

        return [
            {
                "month": month,
                "year": year,
                "generated_at": datetime.now(timezone.utc).isoformat(),
                "total_billable": round(total_billable, 2),
                "total_revenue": round(total_revenue, 2),
                "total_unpaid": round(total_unpaid, 2),
                "items": items,
                "summary": summary,
            }
        ]
