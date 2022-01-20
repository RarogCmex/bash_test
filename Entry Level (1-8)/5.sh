#!/bin/bash
#
# Mirrors all additional arguments passed for that script

while [ -n "$1" ]
  do echo "$1"
  shift
done
