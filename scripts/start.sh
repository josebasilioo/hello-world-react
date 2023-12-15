#!/bin/bash
nomeApp="helloReact"
cd /appDeploy
sudo npm cache clean -f
sudo npm install

process=`sudo lsof -i :9001`
pid=`echo $process | grep -oP '\b\d+\b' | head -n 1`
sudo kill -9 $pid

sudo supervisord
sudo supervisorctl start $nomeApp

