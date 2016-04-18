#!/bin/bash

exec 3>tmp.txt
echo "hello world" >&3
exec 3>&-	# 关闭该文件描述符
echo "hello world" >&3	# error
#./close_file_descriptor.sh: line 6: 3: Bad file descriptor
