#!/bin/sh
echo "Installing latest kevoree-cli..."
npm i -g kevoree-cli && npm cache clean

echo "Starting Kevoree..."
kevoree "$@"
