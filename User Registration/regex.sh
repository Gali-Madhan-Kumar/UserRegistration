#! /bin/bash

echo "Enter the FirstName "
read firstName

echo "Enter the LastName "
read lastName

regex=^[A-Z][a-z]{1,}[^0-9]$

if [[ $firstName =~ $regex ]]
then
	echo "Valid FirstName"
else
	echo "Invalid FirstName"
fi

if [[ $lastName =~ $regex ]]
then
	echo "Valid LastName"
else
	echo "Invalid LastName"
fi
