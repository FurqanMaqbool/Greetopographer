# """
# WSGI config for backend project.

# It exposes the WSGI callable as a module-level variable named ``application``.

# For more information on this file, see
# https://docs.djangoproject.com/en/5.1/howto/deployment/wsgi/
# """

# import os

# from django.core.wsgi import get_wsgi_application

# os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'backend.settings')

# application = get_wsgi_application()


# app = application


"""
WSGI config for backend project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/5.1/howto/deployment/wsgi/
"""

import os
import sys
import logging

# Configure logging
logging.basicConfig(level=logging.DEBUG, format="%(asctime)s %(levelname)s %(message)s")
logger = logging.getLogger(__name__)

try:
    from django.core.wsgi import get_wsgi_application

    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'backend.settings')

    # Ensure GDAL and GEOS libraries are loaded
    gdal_library_path = os.getenv("GDAL_LIBRARY_PATH")
    geos_library_path = os.getenv("GEOS_LIBRARY_PATH")

    if not gdal_library_path or not geos_library_path:
        logger.warning("GDAL or GEOS library path is not set!")

    application = get_wsgi_application()
    logger.info("WSGI application initialized successfully.")

except Exception as e:
    logger.error("WSGI application failed to start", exc_info=True)
    raise e

# For Vercel
app = application
