#!/bin/bash


timeout_function() {
	sleep 5
	echo "You didn't have time to promt"
	kill $$
}

timeout_function&
read REPLY
echo ${REPLY}
kill $!

