#!/bin/sh
echo "Starting mosquitto..."
nohup mosquitto &

echo "Starting Kevoree..."
kevoree "$@"
