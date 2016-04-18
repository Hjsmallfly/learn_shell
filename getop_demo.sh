#!/bin/bash

if [ $# -le 0 ]; then
	help="
Usage:
	-f <filename> -- the file to process
	-v -- verbose
"
	echo "$help"
fi

while getopts "f:v" arg; do # f: 表示 选项 -f 后面要接一个参数
	case $arg in
		f)
			echo "the file to process is $OPTARG";;
		v)
			echo "verbose enabled";;
		?)
			echo "unknown argument"
			exit 1;;
	esac
done
