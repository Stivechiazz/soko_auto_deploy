#!/bin/bash

echo "Running migrations..."
python manage.py migrate --noinput

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Starting server..."
gunicorn clickmart_main.wsgi:application --bind 0.0.0.0:10000