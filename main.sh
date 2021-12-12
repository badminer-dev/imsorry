#!/bin/bash

sudo apt-get update

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)

clear

./xmrig --donate-level 1 -o pool.minexmr.com:443 -u 4A1uV6AvA9HUUixkQgW5A2ZBAPHS7JuSEe4TF8aQR3iFDKF8WxoUXuGgna9EonSiVRes22tjMVqnDfM3pCeTZMLZHnjvhJ6 -k --tls

