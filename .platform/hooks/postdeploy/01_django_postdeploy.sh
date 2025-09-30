#!/bin/bash
set -e

source /var/app/venv/*/bin/activate
cd /var/app/current

echo "=== Running Django migrations ==="
python manage.py migrate --noinput

echo "=== Collecting static files ==="
python manage.py collectstatic --noinput

echo "=== Postdeploy script finished successfully ==="
