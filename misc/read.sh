#!/bin/bash

# read尽量不要同时输入多个值
printf "请输入一个值："
read value
printf "这个值=%s\n" "${value}"