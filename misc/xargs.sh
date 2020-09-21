#!/bin/bash
# see: https://www.cnblogs.com/chyingp/p/linux-command-xargs.html


# 经常使用的
# -t 	: Echo the command to be executed
# -n1	: Set the maximum number of arguments taken from standard input for each invocation of utility.
# -0	: 同上 ，但是以 NUL 来作为分隔符


# 统计一个源代码目录中所有 text 文件的行数
# xargs -0 将 \0 作为定界符。
find ./text -type f -name "*.txt" -print0 | xargs -0 wc -l
# find ./text -type f -name "*.txt" -print | xargs wc -l
# fd -t f -0 txt ./text | xargs -0 wc -l

# 查找 ./text 目录下，所有的txt文件，并压缩
find ./text -type f -name "*.txt" -print | xargs tar -czvf ./text/allText.tar.gz
# fd -t f txt ./text | xargs tar -czvf ./text/allText.tar.gz



# 复制所有图片文件到 /data/images 目录下：
ls *.jpg | xargs -n1 -I {} cp {} /data/images

# 统一加后缀
ls *.js | xargs -t -I '{}' mv {} {}.backup

# 将7天前的日志备份到特定目录
find . -mtime +7 | xargs -I '{}' mv {} /tmp/otc-svr-logs/

# 删除目录下所有的png图片
ls *.png | xargs -n1 rm
