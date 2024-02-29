#!/bin/bash

read -p "Please Enter the IP Range in the form (IP/Subnet):" target_mask

IFS="/"

read -ra arr<<<$target_mask

ip=${arr[0]}
subnet=${arr[1]}

echo -e "\nIp: $ip\nSubnet: $subnet\n"

number_of_hosts=$(( 2**(32 - $subnet) - 2 ))
echo -e "Number of Available Hosts: $number_of_hosts\n"

echo -e "Starting PING Requests!! ... \n"

for (( x == 0; x <= $number_of_hosts; x++ ));
do
  if  ping -q -c 2 -W 1 192.168.1.$x > /dev/null;
  then
    echo "192.168.1.$x is UP"
  else
    echo "192.168.1.$x is currently down"
  fi
done



