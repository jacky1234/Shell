#!/bin/bash

a=1
b=2

c=`expr $a + $b`
echo `expr $a + $b`
echo `expr $a+$b=$c`

if [ $a == 1 ]
then
	echo 'a等于1'
else
	echo 'a不等于1'
fi 

if [ $b != 1 ]
then
	echo 'b不等于1'
fi 