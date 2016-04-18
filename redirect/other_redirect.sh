#!/bin/bash

# 表示追加, 因为后面的语句中 不能用 >>&3, 所以在exec 这里说明
exec 3>> other.txt

echo "hello" >&3
echo "world" >&3
