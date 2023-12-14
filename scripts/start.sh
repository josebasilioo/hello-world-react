#!/bin/bash
nomeApp="helloReact"
cd /appDeploy
npm install
npm start

sudo supervisord
sudo supervisorctl start $nomeApp