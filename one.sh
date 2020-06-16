#!/bin/bash 

shopt -s extglob
echo "Welcome to User Registration Exercise"
read -p "Enter First Name: " first
if [[ $first =~ ^[A-Z]{1}+[a-z]{2,}$ ]]
then
	echo "Valid First Name";
else
	echo "Invalid First Name. Please Re-Enter!";
fi
