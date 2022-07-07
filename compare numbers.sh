#!/usr/bin/env bash

read -p "Please Enter First Number: " NUM1
VAR1=$(tr -d [:alpha:] <<< $NUM1)
while [ -z "$VAR1" ]; do
	if [ -z "$VAR1" ]; then
		echo "Input is incorrect"
		read -p "Please Enter First Number: " NUM1
		VAR1=$(tr -d [:alpha:] <<< $NUM1)
	fi
done
read -p "Please Enter Second Number: " NUM2
VAR2=$(tr -d [:alpha:] <<< $NUM2)
while [ -z "$VAR2" ]; do
	if [ -z "$VAR2" ]; then
		echo "Input is incorrect"
		read -p "Please Enter Second Number: " NUM2
		VAR2=$(tr -d [:alpha:] <<< $NUM2)
	fi
done
if [ $VAR1 -gt $VAR2 ]; then
	echo "$VAR1 greater than $VAR2"
elif [ $VAR1 -lt $VAR2 ]; then
	echo "$VAR1 less than $VAR2"
else
	echo "$VAR1 equal then $VAR2"
fi
