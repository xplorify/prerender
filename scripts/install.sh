#!/bin/bash


apt-get update
apt-get install build-essential \
                libssl-dev \
                g++ \
                flex \
                bison \
                gperf \
                curl \
                autoconf \
                automake \
                libtool \
                nasm \
                make \
                pkg-config \
                git -y

git clone https://github.com/creationix/nvm.git $NVM_DIR
cd $NVM_DIR

source $NVM_DIR/nvm.sh
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
nvm use default

echo "source ${NVM_DIR}/nvm.sh" > $HOME/.bashrc
source $HOME/.bashrc


export NODE_PATH=$NVM_DIR/v$NODE_VERSION/lib/node_modules
export PATH=$NVM_DIR/v$NODE_VERSION/bin:$PATH

cd /
git clone https://github.com/prerender/prerender.git

cd /prerender 
npm i
npm i prerender-mongodb-cache --save
npm update cache-manager
npm update mongodb

cp /scripts/server.js /prerender/