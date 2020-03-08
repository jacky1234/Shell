#!/bin/bash


# 统计一个源代码目录中所有 text 文件的行数
# xargs -0 将 \0 作为定界符。
find ./text -type f -name "*.txt" -print0 | xargs -0 wc -l
# find ./text -type f -name "*.txt" -print | xargs wc -l
# fd -t f -0 txt ./text | xargs -0 wc -l

# 查找 ./text 目录下，所有的txt文件，并压缩
find ./text -type f -name "*.txt" -print | xargs tar -czvf ./text/allText.tar.gz
# fd -t f txt ./text | xargs tar -czvf ./text/allText.tar.gz