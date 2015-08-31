#!/bin/bash -e

# use nvm to install Node v. 0.10.x
. /root/.nvm/nvm.sh && nvm install 0.10

# Update npm to latest version
npm install npm -g

# Install grunt-cli
npm install -g grunt-cli
