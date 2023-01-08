#!/bin/bash

# directory to scan
dir="/home/bsm/test"

# scan the directory and print out any changes
while true; do
  changes=$(inotifywait -r -e modify,move,create,delete --format '%w%f %e' "$dir")
  echo "$changes"
  sleep 1
done
