#!/bin/bash

echo "Please Enter the Target IP/Domain you want to check for UP:"
read target

while true
do
	if ping -q -c 2 -W 1 $target > /dev/null ;
	then
		echo -e "Hey, you're up!!"
		break
	else
		echo "$target is currently down"
	fi
sleep 2
done
