#!/bin/bash

read -p "input lenght of the password: " num

if [[ $num =~ ^[0-9]+$ ]]; then 
	if (( $num < 8 || $num > 32 )); then
		echo "Error: lenght must be from (8-32)"
		exit 1
	fi
else
	echo "Error: not a number"
	exit 1
fi

random_password=$(tr -dc '[:alnum:]!@#$%^&*' < /dev/urandom | head -c$num)

echo "Random password: $random_password"
