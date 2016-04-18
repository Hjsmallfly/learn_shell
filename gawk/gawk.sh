#!/bin/bash
echo "one 1" > data.txt
echo "two 2" >> data.txt
echo "three 3" >> data.txt
# $0 代表整行数据
# $1 $2 ... 分别是每一行中的第一第二字段的内容
# 分隔符可以用 -F 参数指定, 默认是一切空白符
# gawk 中的指令必须包含在单引号的花括号中 '{command}'
gawk '{print $1 }' data.txt
# 注意 print 的语法, 如何连接 $x 和 字符串常量
gawk -F ':' '{print $1 " - " $4}' /etc/passwd

# -f 命令从文件中读取 gawk 要进行的操作

# 在 gawk 的命令中使用变量并不需要使用 美元$符号
# FS 变量指明了分隔符
# BEGIN END 分别在处理数据之前和之后运行
cat > script.txt <<EOL
BEGIN {
	print "-------------------1st field and 2nd field-------------------"
	FS=":"
}
{
text = "----"
print \$1 text \$2
}
END {print "end of ouput"}
EOL

gawk -f script.txt /etc/passwd
