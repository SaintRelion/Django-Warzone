def user_subscription_resolver(filters):
    from .user import User
    from .subscription import Subscription

    subs_qs = Subscription.objects.select_related("user")
    subs = list(
        subs_qs.values(
            "id",
            "user_id",
            "plan",
            "amount",
            "address",
            "status",
            "next_billing_date",
        )
    )

    user_ids = {s["user_id"] for s in subs if s["user_id"]}
    users_qs = User.objects.filter(id__in=user_ids).values(
        "id", "first_name", "last_name"
    )
    users_map = {u["id"]: f"{u['first_name']} {u['last_name']}" for u in users_qs}

    result = []
    for s in subs:
        r = s.copy()
        r["user"] = r.pop("user_id")  # rename user_id → user
        r["name"] = users_map.get(r["user"], "")
        result.append(r)

    return result
