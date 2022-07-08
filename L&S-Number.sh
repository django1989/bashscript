#!/usr/bin/env bash
MAX=0
MIN=999999999999
for ((i=1; i<=20; i++)); do
	read -p "Enter $i number: " NUM
	VAR=$(tr -d [:alpha:] <<< $NUM)
	while [ -z $VAR ]; do
		if [ -z $VAR]; then
			read -p "Enter $i number: " NUM
			VAR=$(tr -d [:alpha:] <<< $NUM)
		fi
	done	
	if [ $VAR -gt $MAX ]; then
		MAX=$VAR
	fi
	if [ $VAR -lt $MIN ]; then
		MIN=$VAR
	fi
done
echo "The Largest Number is $MAX and the Smallest Number is $MIN"
