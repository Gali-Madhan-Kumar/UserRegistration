#! /bin/bash

echo "Enter the FirstName "
read firstName

echo "Enter the LastName "
read lastName

echo "Enter the Email "
read email

echo "Enter the Mobile No "
read mobileNo

echo "Enter the Password "
read password

regex=^[A-Z][a-z]{1,}[^0-9]$
emailRegex=^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]$
mobileNoRegex=^[9][1][[:space:]][6-9]{1}[0-9]{9}$
specialCharRegex=[^a-zA-Z0-9]{1}

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

if [[ $mobileNo =~ $mobileNoRegex ]]
then
	echo "Valid Mobile No"
else
	echo "Invalid Mobile No"
fi

if [[ ${#password} -ge 8 && "$password" == *[A-Z]* && "$password" == *[0-9]* && $password =~ $specialCharRegex ]]
then
	echo "Valid Password"
else
	echo "Invalid Password"
fi
