#!/bin/bash

# 使用 sort 命令
# 默认是按照字符串排序, 升序
# -r 反序输出
# -o filename 输出结果到文件, 和重定向略有区别
# 重定向不能输出到原文件, 这时候应该用 -o 选项
# -n 按照数字来排序


ls ../ | sort
echo "------------------------------------"
# -u 选项去重
echo -e "apple\npear\npear\nbanana" | sort -u

echo "------------------------------------"
# -t 指定分隔符, -k 指定排序的列
cat data.txt | sort -n -t ':' -k 2

# -f 忽略字母大小写
