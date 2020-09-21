#!/bin/bash
array_name=(
	'Hello'
	'Alice'
	'Jack'
	'HuaHua'
	"Hello0"
	"Hello1"
	"Hello2"
	"Hello3"
	"Hello4"
	"Hello5"
	'#123'
	'#111'
)

array_1=array_name

array_name_1=(
	'1'
	'2'
)

# 追加数据
array_name+=('April')

# 查找数组中以 Hello开头的元素
echo "查找数组中以 Hello开头的元素"
for item in ${array_name[@]}
do
	if [[ $item == Hello* ]]
	then
		echo $item
	fi
done
echo "========================"

# 查找数组中以 #开头的元素
echo "查找数组中以 # 开头的元素"
for item in ${array_name[@]}
do
	if [[ $item == \#* ]]
	then
		echo $item
	fi
done
echo "========================"

echo "${array_name[2]} ${array_name[3]}"

# 使用 @ 符号可以获取数组中的所有元素
echo	

for item in ${array_name[@]}
do
	echo $item
done

# 获取数组的长度
echo "数组长度： ${#array_name[@]} or ${#array_name[*]}"
echo "取得数组单个元素的长度 ${#array_name[0]}"
