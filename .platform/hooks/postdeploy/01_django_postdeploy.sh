#!/bin/bash
set -e
cd /var/app/current

echo "=== Running Django migrations ==="
/var/app/venv/*/bin/python manage.py migrate --noinput

echo "=== Collecting static files ==="
/var/app/venv/*/bin/python manage.py collectstatic --noinput

echo "=== Postdeploy script finished successfully ==="
