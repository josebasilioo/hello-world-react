#!/bin/bash
nomeApp="helloReact"

process=`sudo lsof -i :9001`
pid=`echo $process | grep -oP '\b\d+\b' | head -n 1`

sudo supervisorctl stop $nomeApp

if [ -z "${pid}" ]; then
    echo "Empty process... starting"
else
    echo "Killing process..."
    sudo kill -9 $pid
fi