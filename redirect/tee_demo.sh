#!/bin/bash
# 默认情况下 tee 会重新创建, 也就是覆盖文件内容
# -a 参数可以改为追加模式
echo "1" | tee tmp.txt
echo "2" | tee -a tmp.txt
