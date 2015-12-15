#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
sudo npm install -g grunt-cli mocha vows phantomjs casperjs;

echo "================ Installing selenium =================="
sudo mkdir -p /srv;
cd /srv && sudo wget http://selenium-release.storage.googleapis.com/2.48/selenium-server-standalone-2.48.2.jar;

echo "=============== Installing bower globally ============="
sudo npm install -g bower

for file in /u12nod/version/*;
do
  $file
done
