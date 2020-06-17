#!/bin/bash

shopt -s extglob
echo "Welcome to User Registration Exercise"
read -p "Enter First Name: " first
if [[ $first =~ ^[[:upper:]]+([a-z]{3,}) ]]
then
	echo "Valid First Name";
else
	echo "Invalid First Name. Please Re-Enter!";
fi
