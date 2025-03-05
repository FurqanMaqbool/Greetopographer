# pip install -r requirments.txt
# python3 manage.py collectstatic


# #!/bin/bash

# # Install GDAL from PyPI
# pip3 install --no-cache-dir GDAL==3.10.1

# # Install other dependencies
# pip3.12 install -r requirments.txt

# # Run migrations (if needed)
# python3.12 manage.py migrate

# # Collect static files
# python3.12 manage.py collectstatic --noinput



#!/bin/bash

# Update package lists
apt-get update && apt-get install -y gdal-bin libgdal-dev libgeos-dev

# Export GDAL & GEOS library paths
export GDAL_LIBRARY_PATH=$(gdal-config --prefix)/lib/libgdal.so
export GEOS_LIBRARY_PATH=$(geos-config --prefix)/lib/libgeos_c.so

# Ensure environment variables are set for Django
echo "export GDAL_LIBRARY_PATH=$GDAL_LIBRARY_PATH" >> ~/.bashrc
echo "export GEOS_LIBRARY_PATH=$GEOS_LIBRARY_PATH" >> ~/.bashrc

# Install Python dependencies
pip3 install --no-cache-dir GDAL==$(gdal-config --version)
pip3 install -r requirements.txt

# Apply Django migrations
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput

