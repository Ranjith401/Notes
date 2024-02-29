#!/bin/bash

until [[ $order == "coffee" ]]
do
	echo "Hey! would you like Coffee or Tea?"
	read order
done
echo "Excellent Choice!! here is your Order!"

