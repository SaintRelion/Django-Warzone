from django.utils import timezone
from sr_libs.dal.utils import apply_dynamic_filters


def user_billing_resolver(filters):
    from dal_resources.billing import Billing
    from dal_resources.payment_history import PaymentHistory

    # Fetch raw data
    billings_qs = Billing.objects.select_related("user", "subscription").filter(
        is_archived=False
    )
    billings_qs = apply_dynamic_filters(billings_qs, Billing, filters)

    payments_qs = PaymentHistory.objects.filter(
        status="Completed", bill_id__in=billings_qs.values_list("id", flat=True)
    )
    payments_by_bill = {}
    for p in payments_qs:
        payments_by_bill.setdefault(p.bill_id, []).append(p)

    results = []
    for bill in billings_qs:
        # Use select_related user
        u = bill.user

        # Get payments for this bill from pre-fetched dict
        bill_payments = payments_by_bill.get(bill.id, [])

        total_paid = sum(p.amount for p in bill_payments)
        total_change = sum(p.change for p in bill_payments)
        total_credits = sum(p.credit for p in bill_payments)
        remaining = bill.amount - total_paid

        if total_paid == 0:
            status = "Overdue" if timezone.now().date() > bill.due_date else "Unpaid"
        elif remaining > 0:
            status = "Partially Paid"
        else:
            status = "Paid"

        results.append(
            {
                "id": bill.id,
                "subscription": bill.subscription_id,
                "user": bill.user_id,
                "plan": bill.plan,
                "customer": f"{u.first_name} {u.last_name}" if u else "",
                "amount": bill.amount,
                "due_date": bill.due_date,
                "created_at": bill.created_at,
                "total_paid": total_paid,
                "total_change_given_back": total_change,
                "total_credits": total_credits,
                "remaining": max(remaining, 0),
                "status": status,
            }
        )

    return results
