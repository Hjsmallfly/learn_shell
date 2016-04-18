#!/bin/bash

# 往函数中传递数组变量

myarray=(1 2 3 4)

echo_array(){
	local the_array
	the_array=($(echo "$@"))
	echo "array: ${the_array[*]}"
}

# 注意传递数组的形式
echo_array ${myarray[*]}
