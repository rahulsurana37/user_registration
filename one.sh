#!/bin/bash 

shopt -s extglob
echo "Welcome to User Registration Exercise"
read -p "Enter First Name: " first
read -p "Enter Second Name: " second
pat="^[A-Z]{1}[a-z]{2,}$";

if [[ $first =~ $pat && $second =~ $pat ]]
then
	echo "Valid Name";
else
	echo "Invalid Name. Please Re-Enter!";
fi
