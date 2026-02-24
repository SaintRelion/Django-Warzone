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

1. **Make migrations**
   python manage.py makemigrations
   python manage.py migrate

2. **Create a superuser**
   python manage.py createsuperuser

⚠️ Make sure to provide an email when creating the superuser — required for OTP/email functionality.

3. **Create a superuser**
   python manage.py runserver
