#!/bin/bash

for i in $(seq 10); do
	echo "$i"
done > for_redirect.txt	# 注意重定向写了在done后面

# 同时也可在 done 后面使用管道命令
