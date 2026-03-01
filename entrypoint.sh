set -e

echo "Running migrations..."
python manage.py migrate --noinput

echo "Starting Uvicorn..."
uvicorn core.asgi:application --host 0.0.0.0 --port 8000 &

echo "Starting Celery worker..."
celery -A core worker --loglevel=info &

echo "Starting Celery beat..."
celery -A core beat --loglevel=info