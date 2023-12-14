#!/bin/bash
nomeApp="helloReact"

process=`sudo lsof -i :9001`

if [ -z "${process}" ]; then
    echo "Empty process... starting"
else
    echo "Stopping supervisor app..."
    sudo supervisorctl stop $nomeApp
fi