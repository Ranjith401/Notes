#!/bin/bash

echo "What is your name?"
read name

echo "How old are you?"
read age

sleep 2

getrich=$((($RANDOM % 15) + $age))

echo "......"
sleep 1

echo "*....."
sleep 1

echo "**...."
sleep 1

echo "***..."
sleep 1

echo "****.."
sleep 1

echo "*****."
sleep 1

echo "******"
sleep 1

echo "Hello $name, you are going to be a Millionaire!!, when you are $getrich years old."


