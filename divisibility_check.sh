#!/bin/bash

read -p "input a number: " number

if [[ ! $number =~ ^[0-9]+$ ]]; then
	echo "input must be only number"
	exit 1
fi
if [[ $(($number % 3)) -eq 0 ]] || [[ $(($number % 5)) -eq 0 ]] || [[ $(($number % 7)) -eq 0 ]]; then
	echo "Divisible."
else
	echo "Not Divisible"

fi
