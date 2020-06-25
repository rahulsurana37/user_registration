#!/bin/bash 

shopt -s extglob
echo "Welcome to User Registration Exercise"
read -p "Enter First Name: " first
read -p "Enter Second Name: " second
name_pat="^[A-Z]{1}[a-z]{2,}$"

function name(){
if [[ $first =~ $name_pat && $second =~ $name_pat ]]
then
	echo "Valid Name";
else
	echo "Invalid Name. Please Re-Enter!";
fi
}
name

read -p "Enter your E-mail ID: " email
email_pat="^[a-zA-Z0-9]+@[a-zA-Z]+/.[a-z]{2,8}$"
function email_check(){
	if [[ $email =~ $email_pat ]]; then
		echo "Email is Valid." $email
	else
		echo "$email - Email is Invalid. Please try again."
	fi
}
email_check

read -p "Enter your Mobile Number with Country Code: " mobile
mobile_pat="^[0-9+]{3}[[:space:]][0-9]{10}$";
function mobile_check(){
	if [[ $mobile =~ $mobile_pat ]]; then
		echo "$mobile is Valid."
	else
		echo "$mobile is Invalid. Please try again."
	fi
}
mobile_check

read -p "Enter your Password: " pass
function password_check(){
	passpattern1="^([a-zA-Z0-9!@#]{8,})$"
	passpattern2="^([a-z0-9!@#]*)[A-Z]+([a-z0-9!@#]*$)"
	passpattern3="^([a-zA-Z!@#]*[0-9])+([a-zA-Z!@#]*$)"
	passpattern4="^([a-zA-Z0-9]*)[^a-zA-Z0-9_\s]([a-zA-Z0-9]*)$"
	if [[ $pass =~ $passpattern1 ]]; then
		if [[ $pass =~ $passpattern2 ]]; then
			if [[ $pass =~ $passpattern3 ]]; then
				if [[ $pass =~ $passpattern4 ]]; then
					echo "Password is Valid."
				else
					echo "Error: Atleast one special character is required. Please try again."
				fi
			else
				echo "Error: Password should contain atleast one number. Please try again."
			fi
		else
			echo "Error - At least one Upper case is required. Please try again"
		fi
	else
		echo "Error - Password should be of atleast 8 characters. Please try again."
	fi
}
password_check
