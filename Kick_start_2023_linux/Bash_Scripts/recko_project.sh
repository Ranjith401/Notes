#!/bin/bash

if [$1]
then 
	n=$1
else 
	echo ""
	echo "========================================================================================="
	echo "This script would create N number of users on the Linux machine with Read/Write priviledges" 
	echo "to a shared folder at /home/share and also generate key based ssh access to these users."
	echo "Users private keys can be found at /home/keys"
	echo "Usage:- "
	echo "bash script.sh <number_of_users>"
	echo "========================================================================================="
	echo ""
	exit
fi 

echo "[+] Adding group project"
groupadd project

echo "[+] Adding Users"
for i in $(seq $n)
do 
useradd -m -s/bin/bash -G project "user$i"
done

echo "[+] Creating shared folder at /home/share"
mkdir -p /home/share 
chgrp -R project /home/share 
chmod -R 2770 /home/share

echo "[+] Generating ssh keys"

mkdir -p /home/keys

for i in $(seq $n)
do 
HOME="/home/user$i"
mkdir -p $HOME/.ssh
touch $HOME/.ssh/authorized_keys
ssh-keygen -t rsa -b 4096 -P "hell@321" -f $HOME/.ssh/id_rsa
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

chown -R user$i:user$i $HOME/.ssh 
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/authorized_keys

cp $HOME/.ssh/id_rsa /home/keys/user$i.pem
chown user$i:user$i /home/keys/user$i.pem
done 

systemctl reload ssh 
