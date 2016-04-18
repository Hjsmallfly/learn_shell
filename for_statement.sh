#!/bin/bash

for item in "hello world" "nice" "1" "what"
do
	echo "item: $item"
done

echo "still can acess the variable item: $item"

# 从文件中读取数据

IFS_OLD=$IFS
IFS=$'\n'	# $'\n' 使其用转义的结果
			# 修改 IFS 使其仅仅用断行符分割数据
			# 如果要多个分割字段 一起列出来即可 IFS=$'\n\t :'
for p in $(cat ./data.txt); do
	echo "$p"
done

IFS=$IFS_OLD

for file in ./*; do
	echo "$file"	
done










