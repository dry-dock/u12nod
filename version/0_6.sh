#!/bin/bash -e

# needed for v.0.6x
apt-get update && apt-get install -y \
  libssl-dev \
  openssl

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.6

# add this line for npm with v0.6x; npm ended support for self-signed certificates in Feb. 2014
npm config set ca=""
