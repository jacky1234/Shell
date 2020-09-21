#!/bin/bash
# dumpsys meminfo

#!/bin/bash

echo -e "Welcome to dump meminfo tools!!\n"
echo -e "start to dump package[$1]"
echo -e "Options as follows:"
echo -e "'0|q' for Exit program"
echo -e "'c' for clear"
echo -e "'d' for dump meminfo"

package=$1

function dump_meminfo {
	adb shell dumpsys meminfo $package
}

dump_meminfo

while [ 1 ]
do
	read -n 1 option
	case $option in
	0|q) 
		exit;;
	c)
		clear;;
	d)
		dump_meminfo;;
	*)
		echo "\nSorry, wrong selection";;
	esac
	echo "\nHit 'd' to dump meminfo, 'c' for clear,  '0|q' to exit program"
	shift
done
clear