#!/bin/bash
# author:菜鸟教程
# url:www.runoob.com

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";


echo "脚本运行的当前进程ID号: $$"
echo "后台运行的最后一个进程的ID号: $!"
echo "传递到脚本的参数个数: $#"

echo The last parameter is ${!#}

# $* 与 $@ 区别,相同点：都是引用所有参数
echo "-- \$* 演示 ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
	echo "@==="
    echo $i
done