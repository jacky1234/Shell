#!/bin/bash
v1=~/Download/v1info.txt
v2=~/Download/v2error.txt

# 对小米商城APP跑monkey及其说明
echo `adb shell monkey -p $1 -v -v -v -s 1 --ignore-crashes --ignore-timeouts --ignore-native-crashes --pct-touch 30 100 2>$v2 1>$v1`