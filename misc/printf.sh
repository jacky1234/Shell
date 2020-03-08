#!/bin/bash

# %-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐）

gap=10
printf "%-${gap}s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 

printf "a string, no processing:<%s>\n" "A\nB"