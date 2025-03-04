# pip install -r requirments.txt
# python3 manage.py collectstatic


#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run migrations (if needed)
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
