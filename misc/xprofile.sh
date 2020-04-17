#!/bin/bash

echo "Welcome to adb shell am profile, package:$s1"
echo "To stop to profile enter <Enter>"

package=$1

temp_file=/data/local/tmp/123.txt

adb shell am profile start $package $temp_file

read key
if [ -z "$key" ]
then
	echo "stop profile and pull out file path, then you can run "\"adb pull $temp_file [dest]\""
	adb shell am profile stop $package
fi

echo "DONE"