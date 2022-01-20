#!/bin/bash
#
# Read single-line reply from commandline and mirror it,
# But you limited only for 5 second.

# Timeout function used to set timeout. 
# Assumes to be posix-compatible solution
timeout_function() {
	sleep 5
	echo "You didn't have time to promt"
	kill $$ #ToDo: graceful exit
}

timeout_function& # Run timeout in background job
read REPLY
echo ${REPLY}
kill $! # Kill timeout function

