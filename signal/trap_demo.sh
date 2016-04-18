#!/bin/bash

trap "echo 'trapped Ctrl-C'" SIGINT SIGTERM
trap "echo bye" EXIT	# shell脚本退出时用的
sleep 5
#echo "end"
