#!/bin/bash
# 循环控制

# while
sum=0
i=0
while [ $i -le 10 ]
do
    let sum=sum+i
    let i++
    printf "i=%d; sum=%d\n" "$i" "$sum"
done
echo "sum=${sum}"


TARGET_PROJECTS=(
	"Jack"
	"Hello"
	"Alice"
)

# for
for p in ${TARGET_PROJECTS[@]}
do
    echo "${p}"
done