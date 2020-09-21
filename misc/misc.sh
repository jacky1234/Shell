#!/bin/bash
current=`pwd`

echo $current

cd 123

file=111111

if [ -d $file ]
then
   echo "文件是个目录"
else
   echo "文件不是个目录"
fi

if [ -f $file ]
then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi

if [ ! -e $file ]
then
	echo "文件不存在"
fi