#!/bin/bash
nomeApp="helloReact"
cd /appDeploy
npm install

sudo supervisord
sudo supervisorctl restart $nomeApp