#!/bin/bash
date=`date +%m%d`
echo "date(%m%d):$date"
echo "date(%Y%m%d):$(date +%Y%m%d)"
echo `w`

week_day=`date -d $(date +%Y%m%d) +%w`
echo "week_day:$week_day"

code=''
for i in `seq ${#date}`; do
	number=${date:$i-1:1}
	code=$code`expr $(expr $number + $week_day) % 10`
done

echo "code:$code"
