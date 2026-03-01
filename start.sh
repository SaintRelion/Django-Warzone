#!/bin/bash
set -e

echo "Applying migrations..."
python manage.py migrate --noinput

# # Start Celery worker and beat in background
# celery -A core worker -l info &
# celery -A core beat -l info &

# Start main API
echo "Starting server..."
exec uvicorn core.asgi:application --host 0.0.0.0 --port 8000