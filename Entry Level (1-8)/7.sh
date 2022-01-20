#!/bin/bash

if [ -z "$1" ]; then
  echo "You should run that script with numberic parameter"
  exit 1
fi

echo "scale=3;$1*0.00062" | bc

