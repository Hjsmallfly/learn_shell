#!/bin/bash

#read -p "type something: " input
#echo "$input"

#read -p "type something else: "	# read 后面没有接变量名的话, 内容将会
								# 存储于 REPLY 变量中
#echo "$REPLY"

read -p "type first name, last name: " first last	# 多个变量将会依次赋值
													# 最后一个变量会存储
													# 余下的所有信息
echo "first name: $first"
echo "last name: $last"

# -t 指定超时时间, 如果超时没有输入的话, read 将返回非零的退出状态码
# -t 指定的是输入完成的总时间, 即运行到read这句就开始计时, 就算有输入
# 内容也不会重置时间
if read -t 2 -p "input pass code: " passcode; then
	echo "in time"
else
	echo "sorry, you didn't make it in time"
fi

# 对输入字符进行计数, 到达指定值时自动退出并赋值给变量

read -n 1 -p "Do you want to continue[Y/N] " opt
case $opt in
	y | Y)
		echo -e "\nfine, continue...";;
	n | N)
		echo -e "\nend";;
	*)
		echo -e "\nbad choice";;
esac

# -s 将不会在屏幕上显示输入的内容
read -s -p "type your secret: " secret
echo "your secret is $secret"















