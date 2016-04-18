#!/bin/bash

default(){
	# 默认返回值是函数中最后运行的指令的返回码
	echo "hello"
	ls .
}

fun_return(){
	return 1	# 返回值只能是0~255
}

double(){
	echo $[ $1 * 2]
}

default
echo $?

fun_return
echo $?

result=$(double 10)
echo "$result"
