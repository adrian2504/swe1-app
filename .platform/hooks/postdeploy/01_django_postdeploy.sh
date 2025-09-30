#!/bin/bash
# Run migrations
/var/app/venv/*/bin/python manage.py migrate --noinput

# Collect static files
/var/app/venv/*/bin/python manage.py collectstatic --noinput
