# pip install -r requirments.txt
# python3 manage.py collectstatic


#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run migrations (if needed)
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput
