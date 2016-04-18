#!/bin/bash

# 在函数内部没有加 local 关键字声明的变量也是全局的

global_test(){
	var="you can access me outside the function"
}

local_test(){
	local local_var="can't access me outside the function"
}

# 当函数调用之后, 全局变量 var 就存在了
echo "$var"
global_test
echo "$var"

local_test
echo "$local_var"
