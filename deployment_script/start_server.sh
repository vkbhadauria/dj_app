#!/bin/bash

cd /home/ubuntu/vivek/myapp
gunicorn --bind 0.0.0.0:8000 dj_app.wsgi:application --daemon