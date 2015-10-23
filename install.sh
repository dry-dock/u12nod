#!/bin/bash -e
# install nvm:
curl https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

# add source of nvm to .bashrc - allows user to use nvm as a command
echo "source ~/.nvm/nvm.sh" >> .bashrc

for file in /tmp/version/*;
do
  $file
done

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default 0.12

echo "================= Updating Ubuntu nodejs ==================="
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
sudo npm install -g grunt-cli mocha vows phantomjs casperjs;

echo "================ Installing selenium =================="
sudo mkdir -p /srv;
cd /srv && sudo wget http://selenium-release.storage.googleapis.com/2.48/selenium-server-standalone-2.48.2.jar;

echo "=============== Installing bower globally ============="
sudo npm install -g bower
