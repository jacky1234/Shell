#!/bin/bash
p=$1
o=$2

dvm_hprof="temp_profile"

echo "package name：$p"
echo "DVM 格式的路径为：$o ，你可以通过 hprof-conv in.hprof out.hprof 命令将DVM格式的hprof转成java格式的"
adb shell am dumpheap $p /data/local/tmp/123.hprof && adb pull /data/local/tmp/123.hprof $o