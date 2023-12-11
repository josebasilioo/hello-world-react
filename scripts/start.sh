#!/bin/bash
nomeApp="hello-react-jbasilio"
cd /appdir
npm install

sudo supervisord
sudo supervisorctl start $nomeApp