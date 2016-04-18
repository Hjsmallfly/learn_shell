#!/bin/bash

# 用这种形式的定义, 需要保证函数名和{之间有个空格-_-
function func1 {
	echo "func1"
}

func2(){
	echo "func2"
}

# 调用的时候类似于使用其他命令
func1
func2
