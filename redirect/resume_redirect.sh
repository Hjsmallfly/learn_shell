#!/bin/bash

# 重定向之后没很好的方法直接定向回去
# 所以可以用下面的方法

exec 3>&1	# 将 3 定向到 标准输出
exec 1> tmp.txt
echo "hello"	# goes to tmp.txt
exec 1>&3	# 回到标准输出(屏幕)
echo "you can see me now"
