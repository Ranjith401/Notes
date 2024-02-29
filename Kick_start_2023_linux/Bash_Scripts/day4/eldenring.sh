#!/bin/bash

echo -e "Welcome Ranjith!, Please select a Player type:\n 1 - Samurai\n 2 - Prisoner\n 3 - Prophet\n"
read choice

case $choice in
	1)
		type="Samurai"
		hp=10
		attack=14
		magic=11
		;;

	2)
                type="Prisoner"
                hp=5
                attack=12
                magic=7
                ;;
	3)
                type="Prophet"
                hp=12
                attack=8
                magic=15
                ;;
esac

echo -e "You selected $type
Your Health = $hp,
Attack = $attack,
Magic = $magic\n"

# First Beast Battle

echo "ENTER ROUND-1"

victory_number=$(( $RANDOM % 2 ))

echo "Hello Gamer!! As the First Beast approaches, Prepare to Battle! Pick a number between  0 and 1 (0/1)"
read number

if [[ $number == $victory_number && 37 > 23 ]];
then
	echo "Congratulations!, Beast Vanquished!, you Live to fight another day!!"
else
	echo "You Died!"
	echo "Try Again!!"
	exit 1
fi

sleep 3

# Battle Round-2
# we can use the same variable(number and vitcory_number) twice, instead of renaming it everytime

echo -e "\nENTER ROUND-2"
echo "BOSS BATTLE!! Scare Time!, it's Margit. Pick a number between 0-9. (0-9)"
read number

# Cheat Code = "coffee"

victory_number=$(( $RANDOM % 10 ))
if [[ $number == $victory_number || $number == "coffee" ]];
then
	echo "Hurray!! you Slayed Margit, Congrats!! Rest well and Prepare for Round-3"
elif [[ $USER == "thor" ]];
then
	echo " ALL HAIL, GOD of THUNDER! THOR!!, Beast Vanquished!!"
else
	echo "You Died!!"
fi

