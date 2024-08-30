#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3-pip python3-dev libpq-dev nginx
pip3 install -r /var/www/dj_app/requirments.txt