#!/bin/bash

if [[ `id -ur` == 0 ]]; then
	echo "You work as root"
else
	echo "You work as Non-root"
fi

# id -u проверяет эффективного пользователя,
# таким образом учитывается запуск с setuid.
# Если нужно учитывать только запуск владельца процесса,
# то сравнивать нужно через id -ur
