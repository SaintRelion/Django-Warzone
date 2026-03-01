# Dockerfile
FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /code

WORKDIR /code

# If you want to use pip
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . /code

ENTRYPOINT ["uvicorn", "core.asgi:application", "--host", "0.0.0.0", "--port", "8000"]