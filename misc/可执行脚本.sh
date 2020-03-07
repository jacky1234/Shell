#!/bin/bash
for file in `ls` ; do
	if [ -x $file ]
	then 
		echo "file is excutable: $file"
	else
		echo "file is not excutable: $file,chmod it"
		chmod 764 $file
	fi
done