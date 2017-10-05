#!/bin/bash



[[ -s $NVM_DIR/nvm.sh ]] && . $NVM_DIR/nvm.sh
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION
node -v

# enable exclamation marks ! in bash
set +H

echo "Starting server in $NODE_ENV environment"
node /prerender/server.js
