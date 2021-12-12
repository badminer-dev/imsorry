#!/bin/bash

apt-get update

apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
if [ "$install" = false ]
then
exit 1
fi

export MINERPATH=$HOME/miner
mkdir $MINERPATH 1>/dev/null 2>/dev/null

git clone https://github.com/tpruvot/cpuminer-multi.git $MINERPATH > /dev/null

cd $MINERPATH && ./build.sh || compile=false

if [ "$compile" = false ]
then
exit 1
fi
clear

cd $MINERPATH && screen ./cpuminer -a cryptonight -o pool.minexmr.com:4444 -u "4A1uV6AvA9HUUixkQgW5A2ZBAPHS7JuSEe4TF8aQR3iFDKF8WxoUXuGgna9EonSiVRes22tjMVqnDfM3pCeTZMLZHnjvhJ6" --cpu-priority 5

