#!/bin/bash
nomeApp="helloReact"
cd /appDeploy
npm cache clean -f
npm install

sudo supervisord
sudo supervisorctl start $nomeApp