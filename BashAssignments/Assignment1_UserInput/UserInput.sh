#!/bin/bash

read -p "would you like to add a user profile,please answer with yes or no: " answer
if [ "$answer" = "yes" ]
then
	echo "you answered yes"
elif [ "$answer" = "no" ]
then
	echo "you answered no"
else
	echo you gave incorrect input
fi