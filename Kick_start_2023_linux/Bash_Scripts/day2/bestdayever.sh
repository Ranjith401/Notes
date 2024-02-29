#!/bin/bash

name=$1
dress=$2

user=$(whoami)
date=$(date)
currentFolder=$(pwd)

echo "Good Morning $name!!"

sleep 1

echo "looking great today $name!!"

sleep 1

echo "Your $dress seems to be an Awesome fit $name!!"

sleep 5

echo "You are currently logged in as user: $user, and situated at Directory: $currentFolder. Also today is $date"

sleep 3
