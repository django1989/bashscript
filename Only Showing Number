#!/usr/bin/env bash

read -p "Please Enter a Number : " NUM
VAR=$(tr -d [:alpha:] <<< $NUM)
while [ -z "$VAR" ]; do
	if [ -z "$VAR" ]; then
		read -p "Input is incorrect, Please Enter a Number again : " NUM
		VAR=$(tr -d [:alpha:] <<< $NUM)
	fi
done
echo $VAR
