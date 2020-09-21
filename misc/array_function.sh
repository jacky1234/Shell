#!/bin/bash
# 方法传递数组
function showArr(){
    arr=$1
    for i in ${arr[@]}; do
        echo $i
    done
}

regions=("GZ" "SH" "BJ")
showArr "${regions[*]}"