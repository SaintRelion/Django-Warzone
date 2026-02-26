import os

from celery.schedules import crontab
from celery import Celery

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "core.settings")

app = Celery("warzone-celery")
app.config_from_object("django.conf:settings", namespace="CELERY")
app.autodiscover_tasks()

app.conf.beat_schedule = {
    "scan-model-trigger-schedules": {
        "task": "sr_libs.model_trigger.tasks.scan_scheduled_tasks",
        "schedule": 30.0,
    }
}
