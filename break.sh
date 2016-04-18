#!/bin/bash
echo "enter for loop"
for i in 1 2 3 4 5; do
	if [ $i -eq 3 ]; then
		echo "break"
		break
	fi
	echo "iteration: $i"
done
echo "out of for loop"
echo
echo "enter while loop"

while [ $i -lt 10 ]; do
	if [ $i -eq 8 ]; then
		echo "break"
		break
	fi
	i=$[ $i + 1 ]
	echo "while: $i"
done
echo "out of while loop"

# break 默认的层数是 1 即最内层的循环
# ---------- break outter loop ------------
for i in $(seq 10); do
	echo "outter loop: $i"
	for j in $(seq $i); do
		if [ $j = "5" ]; then
			echo "break outter for loop"
			break 2
		fi
		echo "$j"
	done
done
echo "out of outter loop"
# continue 有和break相同的用法
