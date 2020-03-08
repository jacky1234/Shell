#!/bin/bash
your_name='runoob'
str="Hello, I know you are \"$your_name!\" \n"
echo -e $str

# 拼接字符串
# 使用双引号拼接
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting  $greeting_1

echo "$your_name 字符串长度: ${#your_name}"

# 提取子字符串
echo "$your_name, 截取1，4： ${your_name:1:4}"

# 查找子字符串； 找字符 i 或 o 的位置
echo `expr index "$your_name" io`

# 执行子命令
echo `ls`

a="123"

# 判断字符串为空的方法有三种：
# if [ "$str" =  "" ]
# if [ x"$str" = x ]
# if [ -z "$str" ] （-n 为非空）

if [ -n "$a" ]
then
   echo "-n $a : 字符串长度不为 0"
else
   echo "-n $a : 字符串长度为 0"
fi

if [ $a ]
then
   echo "$a : 字符串不为空"
else
   echo "$a : 字符串为空"
fi

