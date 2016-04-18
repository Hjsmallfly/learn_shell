#!/bin/bash

# 默认移位数
if [ $# -le 0 ]; then
	shift_num=1
else
	shift_num=$1
fi

echo "args: $*"
echo "shifting $shift_num"
shift $shift_num
echo "args: $*"

