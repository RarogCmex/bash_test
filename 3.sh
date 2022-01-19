#!/bin/bash

time_limit() {
sleep 5
echo "You didn't have time to enter in 5 seconds"
pkill -P $$
}
time_limit&
read REPLY
echo ${REPLY}
pkill -P $$
