#!/bin/bash
set -e

# Apply migrations
python manage.py migrate --noinput

# Start Celery worker and beat in background
celery -A core worker -l info &
celery -A core beat -l info &

# Start main API
exec uvicorn core.wsgi:application -host 0.0.0.0 --port 8000