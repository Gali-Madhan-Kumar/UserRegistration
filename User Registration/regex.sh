#! /bin/bash

echo "Enter the FirstName "
read firstName

echo "Enter the LastName "
read lastName

echo "Enter the Email "
read email

regex=^[A-Z][a-z]{1,}[^0-9]$
emailRegex=^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]$

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

if [[ $email =~ $emailRegex ]]
then
	echo "Valid Email"
else
	echo "Invalid Email"
fi

