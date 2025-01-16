#!/bin/bash

folder_odd="odd"
folder_even="even"

mkdir -p $folder_odd $folder_even

for (( i=1; i<= 20; i++ )); do
	if [ $(($i % 2)) -eq 0 ]; then
		touch ./odd/$i.txt
	else
		touch ./even/$i.txt
	fi
done
