#!/bin/bash
nomeApp="helloReact"
cd /appDeploy
npm install

process=`sudo lsof -i :9001`
pid=`echo $process | grep -oP '\b\d+\b' | head -n 1`

if [ -z "${pid}" ]; then
    echo "Empty process... starting"
else
    echo "Killing process..."
    sudo kill -9 $pid
fi

sudo supervisord
sudo supervisorctl start $nomeApp
npm start
