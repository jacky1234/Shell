#!/bin/bash
# dumpsys meminfo

#!/bin/bash

echo -e "Welcome to dump meminfo tools!!\n"
echo -e "Options as follows:"
echo -e "0 for Exit program"
echo -e "Any other button for dump meminfo"
package=$1

function menu {
	read -n 1 option
}

function dump_meminfo {
	adb shell dumpsys meminfo $package
}

while [ 1 ]
do
	menu
	case $option in
	0) 
		exit;;
	*)
		dump_meminfo;;
	esac
	echo -en "\n\nHit any key except '0' to dump meminfo, for 0 to exit program"
	read -n 1 line
done
