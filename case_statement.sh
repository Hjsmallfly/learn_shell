#!/bin/bash

if [ $# -le 0 ]; then
	echo "please input an argument"
	exit 1
fi

# echo $0, $0 is the script's name

case "$1" in
	a | b | c)
		echo "match a|b|c";;
	1 | 2 | 3)
		echo "match 1|2|3";;
	*)
		echo "do not match anything";;
esac

