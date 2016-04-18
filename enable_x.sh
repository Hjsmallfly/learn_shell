#!/bin/bash

for sh in ./*.sh; do
	#echo "$sh"
	chmod u+x "$sh"
done;
