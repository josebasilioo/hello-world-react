#!/bin/bash
nomeApp="hello-react-jbasilio"
cd /appDeploy/hello-world-react
npm install

sudo supervisord
sudo supervisorctl start $nomeApp