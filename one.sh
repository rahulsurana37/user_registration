#!/bin/bash 

shopt -s extglob
echo "Welcome to User Registration Exercise"
read -p "Enter First Name: " first
read -p "Enter Second Name: " second
name_pat="^[A-Z]{1}+[a-z]{2,}$"

if [[ $first =~ $name_pat && $second =~ $name_pat ]]
then
	echo "Valid Name";
else
	echo "Invalid Name. Please Re-Enter!";
fi

read -p "Enter your E-mail ID: " email
email_pat="^[a-zA-Z0-9]+/@[a-zA-Z]+/.[a-z.]{2,8}$"
function email_check(){
	if [[ $email =~ $email_pat ]]; then
		echo "Email is Valid." $email
	else
		echo "$email - Email is Invalid. Please try again."
	fi
}
email_check