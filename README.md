## Recommended Python Version

- **Python 3.12.8** ✅

---

## Setup Instructions

1. **Clone the repository**

git clone https://github.com/SaintRelion/Django-Warzone.git
cd Django-Warzone

2. **Create a virtual environment**
   python -m venv venv

3. **Activate the virtual environment**
   venv\Scripts\activate

4. **Install dependencies**
   pip install -r requirements.txt

## Django Setup

1. **Create .env for Database Credentials**
   Create a .env file (Default database is Postgres)

   SECRET_KEY = 'django-insecure-t+%j)0kc6km9)87$d=2)6zsypy&@fvzzz1a&(m8%f77\*11+p8b'

   DB_NAME=warzone

   DB_USER=postgres

   DB_PASSWORD=postgres

   DB_HOST=localhost

   DB_PORT=5433

   ⚠️ You can change to any other database, make sure to update settings.py and .env

2. **Make migrations**
   python manage.py makemigrations
   python manage.py migrate

3. **Create a superuser**
   python manage.py createsuperuser
   ⚠️ Make sure to provide an email when creating the superuser — required for OTP/email functionality.

4. **Create a superuser**
   python manage.py runserver
