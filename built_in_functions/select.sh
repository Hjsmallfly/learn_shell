#!/bin/bash

menu=("display" "echo" "exit")
# 该变量用作选项输入提示
PS3="your option: "
# select 会进入一个循环
select option in "${menu[@]}"; do
	case $option in
	"${menu[0]}")
		echo "hello select";;
	"${menu[1]}")
		echo "your choice: $option";;
	"${menu[2]}")
		echo "exit"
		exit 0;;
	*)
		echo "wrong input";;
	esac	
done
