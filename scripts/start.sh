#!/bin/bash
nomeApp="helloReact"
cd /appDeploy
npm install


echo "getting process"
process=`sudo lsof -i :9001`
pid=`echo $process | grep -oP '\b\d+\b' | head -n 1`
sudo kill -9 $pid

sudo supervisord
sudo supervisorctl start $nomeApp

