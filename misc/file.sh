#!/bin/bash
# author:菜鸟教程
# url:www.runoob.com

# 将 当前目录的文件名循环出来。
for file in `ls .`; do
	echo $file
done

echo `ls .`

# for file in `ls .`
# do
# 	echo $file
# done

echo "文件测试运算符-https://www.runoob.com/linux/linux-shell-basic-operators.html"

file="./string.sh"
if [ -r $file ]
then
   echo "文件可读"
else
   echo "文件不可读"
fi
if [ -w $file ]
then
   echo "文件可写"
else
   echo "文件不可写"
fi
if [ -x $file ]
then
   echo "文件可执行"
else
   echo "文件不可执行"
fi
if [ -f $file ]
then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi
if [ -d $file ]
then
   echo "文件是个目录"
else
   echo "文件不是个目录"
fi
if [ -s $file ]
then
   echo "文件不为空(文件大小是不为0)"
else
   echo "文件为空 (文件大小是0)"
fi
if [ -e $file ]
then
   echo "文件存在"
else
   echo "文件不存在"
fi