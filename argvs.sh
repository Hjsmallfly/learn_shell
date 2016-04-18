#!/bin/bash

# $# 是参数的个数, 不包括 $0

if [ $# -le 0 ]; then
	echo "input something!!!"
	exit 1
fi

echo "you supplied $# parameters in total"

# 注意在${}内部不能再用$, 而是要换成 !
echo "the last one is ${!#}" 

echo "\$*: $*"
echo "\"\$*\": " "$*"

echo "\$@: $@"
echo "\"\$@\": " "$@"

# 遍历所有参数, 注意加不加引号在 $* 变量的周围是会造成区别的
echo "for in \$*"
for arg in $*; do
	echo "$arg"
done

echo "for in \"\$*\""
for arg in "$*"; do
	echo "$arg"
done

# 所以在加了引号的情况下 "$*" 变成了[一个]字符串
# 而 "$@" 还是以类似数组的形式存在即 "var1" "var2" "var3" "var4"

echo "for in \"\$@\""
for arg in $@; do
	echo "$arg"
done

echo "for in \"\$@\""
for arg in $@; do
	echo "$arg"
done
