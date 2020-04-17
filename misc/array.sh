#!/bin/bash
array_name=(
	"Hello"
	"Alice"
	"Jack" 
	"HuaHua"
)

echo "${array_name[2]} ${array_name[3]}"

# 使用 @ 符号可以获取数组中的所有元素
echo ${array_name[@]}

for item in ${array_name[@]}
do
	echo $item
done

# 获取数组的长度
echo "数组长度： ${#array_name[@]} or ${#array_name[*]}"
echo "取得数组单个元素的长度 ${#array_name[0]}"
