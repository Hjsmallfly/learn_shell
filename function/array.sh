#!/bin/bash

data=(1 2 3 "hello" "world")
# 所用元素
echo "${data[*]}"
echo "${data[@]}"

# 数组长度
arr_len=${#data[@]}
echo "array length: $arr_len"

fourth_length=${#data[3]}
echo "${data[3]}'s length is: $fourth_length"

data[0]="changed"
echo "${data[@]}"
