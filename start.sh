#!/bin/bash
cd src/helloworld
python3 manage.py migrate
gunicorn helloworld.wsgi:application --bind 0.0.0.0:8000 --workers 1