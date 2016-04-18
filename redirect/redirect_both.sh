#!/bin/bash

echo "hello world" > stdout.txt
errer 2> stderr.txt

# 错误的优先级会高些, 所以错误信息会优先于普通消息在文件中出现
ls stdout.txt non_exist.txt &> log.txt
