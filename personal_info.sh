#!/bin/bash

FirstName=$1
LastName=$2
Age=$3
Gender=$4

if [[ "$#" -ne 4 ]]; then
	echo "Error: must be 4 arguments!"
	exit 1
fi
if [[ ! $FirstName =~ ^[[:alpha:]]+$ ]] || [[ ! $LastName =~ ^[[:alpha:]]+$ ]]; then
	echo "Error: must contain only letters"
	exit 1
fi
if [[ ! $Age =~ ^[0-9]+$ ]]; then
	echo "Error: age must contain only numbers"
	exit 1
fi 
if [[ $Gender !=  "M" ]] && [[ $Gender != "F" ]]; then
	echo "Error: only M(Male) or F(Female)"
	exit 1;
fi

echo -e "Name = $FirstName\nLastName = $LastName\nAge = $Age\nGender = $Gender" > info.txt

