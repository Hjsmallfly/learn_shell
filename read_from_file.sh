#!/bin/bash

echo -e "hello world\nthe second line\nthe third line" > read_from_file.txt

cat ./read_from_file.txt | while read line; do
	echo "$line"
done
