#!/bin/bash

echo "small fly" > data.txt

# sed 并不会 in place 修改
sed "s/small/SMALL/" data.txt

# -e 使用多个命令

sed -e "s/small/SMALL/; s/fly/FLY/" data.txt

# 从文件中读取命令

echo -e "s/s/S/\ns/f/F/" > script.txt

sed -f script.txt data.txt

# s 命令的格式
# s/pattern/replacement/flag
# 默认 s 命令仅仅处理每行中第一个匹配的数据
# 其中flag可以是

# 数字, 表明替换找到的第n个匹配
# 例如 s/small/SMALL/2	替换该行中找到的第二个small

# g, 替换该行中找到的所有匹配
# p, 将替换后的内容打印出来
# w file, 将替换的结果写入文件中
# 例如 s/small/SMALL/w rep.txt

# s// 命令中的 / 也可以用 ! 来代替
# 这样会使得修改文本中的 / 方便一些
# 例如, s!/bin/bash!/bin/csh!

# 指定范围
# 2s/p/r/flag # 修改第二行
# 2,5s/// 修改2到5行
# 2,$s/// 修改第二行到最后一行

# /pattern/command	对匹配了 pattern 的行进行操作
# pattern 必须用 // 包围起来
# -n 表示不输出, flag p 表示输出修改后的该行
sed -n '/smallfly/s/bash/csh/p' /etc/passwd

# 对单行进行多次操作
# 使用 花括号 对命令进行组合
sed -n '2{
s/x/XXX/
s/:/-----/gp
}' /etc/passwd


# 删除操作
cat > data.txt <<EOL
1
2
3
4
1
EOL

echo "original text"
cat data.txt
# d 命令用于删除指定行
# 删除第二行
echo "modified"
sed '2d' data.txt

# d 命令同时可以 1,2d 或者 2,$d 或者用 /patter/d
echo "------------"
# 删除 出现了 1 的行
sed '/1/d' data.txt

# 插入新的行

cat > data.txt <<EOL
1
2
3
EOL

# i 命令插入到指定行之前
# a 命令插入到指定行之后

echo "------------------------"
sed '2i\new second line' data.txt
echo "------------------------"
sed '2a\new third line' data.txt
echo "------------------------"
# 多行的话, 需要在非最后一行的行尾加上\
sed '2i\new second line\
new third line' data.txt

# c 修改行
echo "------------------------"
sed '2c\this is the second line' data.txt
# sed '2,3c\xxxx' data.txt 并不是把第二第三行都改成xxxx, 而是把
# 这两行一并修改为xxxx
