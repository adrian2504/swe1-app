#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the app source directory
cd /var/app/current

echo "=== Activating virtual environment ==="
# Activate the EB-provided virtualenv
source /var/app/venv/*/bin/activate

echo "=== Running Django migrations ==="
python manage.py migrate --noinput

echo "=== Collecting static files ==="
python manage.py collectstatic --noinput --clear

echo "=== Postdeploy script finished successfully ==="
