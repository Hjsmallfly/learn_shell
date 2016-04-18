#!/bin/bash

# 调用其他脚本里面的函数

source ./func_lib.sh	# 或者用 . ./func_lib.sh 代替 source

echo "$(add 1 2)"
