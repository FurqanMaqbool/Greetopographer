# pip install -r requirments.txt
# python3 manage.py collectstatic

#!/bin/bash

# Install GDAL from GitHub
pip3 install --no-cache-dir --find-links=https://raw.githubusercontent.com/FurqanMaqbool/Greetopographer/main/ GDAL-3.10.1-cp312-cp312-win_amd64.whl

# Install other dependencies
pip3 install -r requirements.txt

# Run migrations (if needed)
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput


