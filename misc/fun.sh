#!/bin/bash
#EXTM3U
#EXT-X-VERSION:3
#EXT-X-TARGETDURATION:11
#EXT-X-MEDIA-SEQUENCE:0
#EXTINF:10.033233,



array_hls=()

exec 0< './text/fun.log'
count=1
while read line
do
	# not startWith("#")
	if [[ $line != \#* ]] 
	then
		array_hls+=($line)
		count=$[ $count +1 ]
	fi
done

https://hls4-l3.xvideos-cdn.com/0e340255f88d0d7aa2de7ac7de7e01d363c5dfad-1593864635/videos/hls/2e/6d/c7/2e6dc7317df4e8c187e093a4e6e17266/hls-250p-a69160.ts
https://hls4-l3.xvideos-cdn.com/805e40a192a0201780f6b41d6c99d04aa8363b53-1593716718/videos/hls/2e/6d/c7/2e6dc7317df4e8c187e093a4e6e17266/

url_prefix="https://hls4-l3.xvideos-cdn.com/805e40a192a0201780f6b41d6c99d04aa8363b53-1593716718/videos/hls/2e/6d/c7/2e6dc7317df4e8c187e093a4e6e17266/"
output="111.mp4"
# 遍历
for item in ${array_hls[@]}
do
	echo "download,$item"
	curl "$url_prefix/item" >> $output
done