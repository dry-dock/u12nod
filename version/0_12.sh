#!/bin/bash -e

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.12

# Update npm to latest version
npm install npm -g

# Install grunt-cli
npm install -g grunt-cli
