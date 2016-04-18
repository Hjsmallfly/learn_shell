#!/bin/bash

# 这里 if 后面的 expression 之后添加了分号, 是为了让 then, 能与其在同一行
# 也可以更换为
# if grep "smallfly" /etc/passwd
# then
# 		commands
# fi
# 的情况
username="smallfly2"
if grep "$username" /etc/passwd; then
	#ls -l "/home/$username"
	echo "$username exists"
elif grep "smallfly" /etc/passwd
then
	#ls -l "/home/smallfly"
	echo "smallfly exists"
else
	echo "$username doesn't exist"
fi

# [ expressoin ] 作为判断条件
# 注意[]括号两边必须要有空格

val=10
if [ $val -eq 10 ]; then
	echo "$val is equal to 10"
fi

if [ $val -ge 10 ]; then
	echo "$val is greater or equal to 10"
fi

if [ $val -ne 11 ]; then
	echo "$val is not equal to 11"
fi

# -gt 大于 -lt 小于 -le 小于等于

# 字符串比较
# = 相同
# != 不想同
# < 小于 使用时需要转义这个字符
# > 大于 使用时需要转义这个字符
# -n str 判断str的长度是否[非0]
# -z str 判断str的长度是否为0

str1="abc"
str2="Abc"

if [ $str1 \> $str2 ]; then
	echo "$str1 > $str2"
elif [ $str1 \< $str ]; then
	echo "$str1 < $str2"
else
	echo "$str1 = $str2"
fi

echo "before assigning to variable non"

# 注意这里有没有引号包围住变量名是有区别的
if [ -n "$non" ]; then
	echo "variable non is not empty"
else
	echo "variable non is empty"
fi

echo "assign to variable non"
non="not empty"

if [ -z "$non" ]; then
	echo "variable non is empty"
else
	echo "variable non is not empty"
fi

# 文件比较
# -e 文件是否存在
# -d 文件存在且是一个目录
# -f 文件存在且是一个文件
# -r 可读
# -s 文件内容非空
# -w -x, 可写, 可执行
# -O 文件是否属于当前用户
# -G 文件默认组于当前用户相同
# f1 -nt file2 newer than
# f1 -ot file2 odler than

file="/etc/shadow"
if [ -r "$file" ]; then
	echo "I can read $file"
else
	echo "I can't read $file"
fi

