#!/bin/bash
work_dir="/home/ubuntu/vivek/myapp"
if [ ! -d "$work_dir" ]; then
        echo "createing directory---$work_dir"
        mkdir "$work_dir"
else
        echo "directory: $work_dir already exists"
fi
cd "$work_dir"
sudo apt-get update
sudo apt-get install -y python3-pip python3-dev libpq-dev nginx
python3 -m venv myenv
source myenv/bin/activate
pip3 install -r "$work_dir/requirements.txt"