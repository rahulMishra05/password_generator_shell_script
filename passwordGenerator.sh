#!/usr/bin/bash

# Simple password generator

# Welcome message 
echo "THIS IS A SIMPLE PASSWORD GENERATOR"

# Ask for the length from the user
echo "Please enter the length of the password you want : "
read PASS_LENGTH  # Store the password length entered by the user here

for p in $(seq 1);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
	# Here we are using openssl for generating secure password.
	# To generate random numbers and character we use the rand keyword
	# We are using -base64 encoding to genrate password and also using entire range of 48
	# Then we are had written command to genrarte the password of the length limited to the password lenght specified by the user
done 

