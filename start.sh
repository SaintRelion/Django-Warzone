#!/bin/bash
set -e

# Apply migrations
python manage.py migrate --noinput

# (Optional) collect static
python manage.py collectstatic --noinput

# Start Celery worker and beat in background
celery -A core worker -l info &
celery -A core beat -l info &

# Start main API
exec uvicorn core.wsgi:application -b 0.0.0.0:4005