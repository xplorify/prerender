#!/bin/bash



[[ -s $NVM_DIR/nvm.sh ]] && . $NVM_DIR/nvm.sh
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION
node -v

echo "Starting server in $NODE_ENV environment"
node /prerender/server.js
