#!/bin/bash

WEB_PATH='/root/'$1
WEB_USER='root'
WEB_USERGROUP='root'

echo "Start deployment"
cd $WEB_PATH
# chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "pulling source code..."
git reset --hard origin/master
git clean -f
git pull
# git checkout master
# echo "changing permissions..."
# chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
# echo "install npm packages..."
# yarn
# npm run build
# pm2 stop $1
# npm run start
# echo "Finished."
