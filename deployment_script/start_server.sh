#!/bin/bash

cd /var/www/dj_app
gunicorn --bind 0.0.0.0:8000 dj_app.wsgi:application --daemon