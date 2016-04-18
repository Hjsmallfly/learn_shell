#!/bin/bash

tmp1=$(mktemp)	# 这样的话, 建立在/tmp/目录下, 返回绝对路径
tmp2=$(mktemp tmp.XXXXXX)	# 建立到当前目录, 而且XXXXXX会被随机替换
tmp3=$(mktemp -t tmp.XXXXXX)	# 建立到/tmp/目录下, 返回绝对路径

echo "$tmp1 $tmp2 $tmp3"

tmp_dir=$(mktemp -d)	# 临时目录
echo "$tmp_dir"
cd $tmp_dir
echo $(pwd)
