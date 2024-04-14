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


for i in {0..1};
do
        for j in {0..9};
        do
                top_ip=$(cat flaws_cloudtrail_logs/flaws_cloudtrail$i$j.json |jq -r |  grep -E "eventName" | sort | uniq -c | sort -nr | head -n 10)
                echo "$top_ip" >> file1.txt
		top_ip=$(cat flaws_cloudtrail_logs/flaws_cloudtrail$i$j.json |jq -r |  grep -E "sourceIPAddress" | sort | uniq -c | sort -nr | head -n 10)
                echo "$top_ip" >> file2.txt
		paste -d " " file1.txt file2.txt > outputfile.txt
                echo -e "\n" >> outputfile.txt
                echo "Currently Processing: flaws_cloudtrail$i$j... "
        done
done

echo "Task Completed!!"

