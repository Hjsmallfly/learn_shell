#!/bin/bash

# 使用 exec 命令永久重定向某个文件描述符

exec 1> p_out.txt

echo $(date +"%s")

# 重定向标准输入
exec 0< p_out.txt
read timestamp
echo "now the time is $timestamp" >&2
