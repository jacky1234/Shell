#!/bin/bash

package=$1
if [ ! $package ]
then 
	echo "please input pacakge first"
fi

pid=`adb shell ps | grep $package | head -1 | awk '{print $2}'`

if [ ! $pid ]
then 
	echo "can not get pid for package:$package"
	exit
fi
echo "$package[pid: $pid]"

f="$(date +%s%N)_trace.txt"
echo $f
adb shell run-as $package kill -3 $pid
adb pull /data/anr/traces.txt $f