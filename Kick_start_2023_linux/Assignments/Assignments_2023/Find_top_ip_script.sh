#!/bin/bash

echo "Starting Operation: ..... "
sleep 2
echo " *.... "
sleep 1
echo " **... "
sleep 1
echo " ***.. "
sleep 1
echo " ****. "
sleep 1
echo " ***** "

echo "Processing the Files, Pleae Wait !!"


for i in {0..9};
do
	top_ip=$(cat flaws_cloudtrail_logs/flaws_cloudtrail0$i.json |jq -r |  grep 'sourceIPAddress\|eventName' | grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]|eventName" | sort | uniq -c | sort -nr | head -n 10)
	echo "$top_ip" >> top_ip_file.txt
	echo -e "\n" >> top_ip_file.txt
	echo "Currently Processing: flaws_cloudtrail0$i ... "
done

echo "Task Completed!!"

