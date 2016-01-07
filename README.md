u12nod
================

Shippable CI image for node.js on ubuntu 12.04. Available versions are:

1. 0.10
2. 0.12
3. 4.23

## How to use
You can use this image to run node.js builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. You should also
activate the appropriate nvm so your build runs against the
correct version of node.js. The node.js versions you specify in the `node.js`
directive in the YML will be available in the `$SHIPPABLE_NODE_VERSION` environment variable. Here's a sample YML file to get you going:

````
language: node_js
node_js:
  - 0.10
  - 0.12
  - 4.23

build_image: drydock/u12nod:prod

before_install:
  # activate the nvm
  - source ~/.nvm/nvm.sh && nvm install $SHIPPABLE_NODE_VERSION
  - node --version
  - npm install -g grunt-cli

install:
  - npm install

script:
  - grunt

````
