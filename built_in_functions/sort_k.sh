#!/bin/bash

# -k 选项的使用

echo "214 176" > numbers.txt
echo "201 233" >> numbers.txt
echo "201 2322" >> numbers.txt
echo "199 200" >> numbers.txt

# 按照第一列排序
# -t 指定分隔符

echo "-----------orignal data------------"
cat numbers.txt
echo "-----------orignal data------------"
# 注意 -k 1 是指 从第一个字段开始, 然后比对到这行的末尾
# the stop position defaults to the line's end
echo "sort -t ' ' -k 1 -n"
cat numbers.txt | sort -t ' ' -k 1 -n
echo "-----------------------------------"
echo "sort -t ' ' -k 1,1n -n"
cat numbers.txt | sort -t ' ' -k 1,1 -n
echo "sort -t '' -k1,1 -k2,2 -n"
cat numbers.txt | sort -t ' ' -k1,1 -k2,2 -n
echo "-----------------------------------"
# -k 1.2 指的是按第一列的第二个字符开始排序
echo "sort -t ' ' -k 1.2 -n"
cat numbers.txt | sort -t ' ' -k 1.2 -n
echo "-----------------------------------"
