#!/bin/bash
nomeApp="helloReact"

process=`sudo lsof -i :9001`
pid=`echo $process | grep -oP '\b\d+\b' | head -n 1`

if [ -z "${process}" ]; then
    echo "Empty process... starting"
    sudo supervisorctl stop $nomeApp
else
    echo "Killing process..."
    sudo kill -9 $pid
    sudo supervisorctl stop $nomeApp
fi