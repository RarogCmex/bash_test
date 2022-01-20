#!/bin/bash
# 
# Check whether we works as root or non-root user

if [[ `id -u` == 0 ]]; then
	echo "You work as root"
else
	echo "You work as Non-root"
fi

# Eng:
# id -u checks the effective user,
# thus, the launch with setuid is taken into account.
# If you need only the owner of the process to be accounted,
# then you need to compare via id -ur
# Russian:
# id -u проверяет эффективного пользователя,
# таким образом учитывается запуск с setuid.
# Если нужно учитывать только запуск владельца процесса,
# то сравнивать нужно через id -ur
