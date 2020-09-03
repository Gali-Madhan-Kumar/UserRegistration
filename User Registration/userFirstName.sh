#! /bin/bash

echo "Enter the FirstName "
read firstName

regex=^[A-Z][a-z]{1,}[^0-9]$

if [[ $firstName =~ $regex ]]
then
	echo "Valid FirstName"
else
	echo "Not a Valid FirstName"
fi
