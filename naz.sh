#!/bin/bash
Random='date +%s'
let Num=( $Random %20 + 1 )
clear
echo "i have chosen a number between 1 and 20"
echo "Can you guess what it is"

read Guess

while [ $Guess -ne $Num ]

do

	if [ $Guess -gt $Num ]
		then echo "No - try lower..."
		else echo "No - try higher..."
	fi
	read Guess
done

echo "Yes the number is $Num"
