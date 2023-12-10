#!/bin/bash
i=1
if [[ -f "userprofile.txt" ]]
then
	i=$(cat userprofile.txt| tail -n 5|grep "index"|cut -d " " -f 2)
	i=$(($i+1))
fi
read -p "would you like to add a user profile,please answer with yes or no: " answer
if [ "$answer" = "yes" ]
then
	echo "you answered yes"
	read -p "Please provide your name (alphabetical characters only): " name
	if [[ "$name" =~ [^a-zA-Z] ]]
	then
		while [[ "$name" =~ [^a-zA-Z] ]]
		do
			echo -e "\nentered while loop \n"
			read -p "you entered non alphabetical characters,please provide your name(alphabetical characters): " name
		done
	fi
	echo $(DATE)>>userprofile.txt
	echo "index: $i" >>userprofile.txt
	echo "Name: $name" >>userprofile.txt
	echo -e "\nName has been saved.\n"
	read -p "Please provide your age (numbers only): " age
	if [[ "$age" =~ [^0-9] ]]
	then
		while [[ "$age" =~ [^0-9] ]]
		do
			echo -e "\nentered while loop\n"
			read -p "you entered non numerica characters,please provide your age(numbers only): " age
		done
	fi
	echo -e "Age: $age">>userprofile.txt
	echo your age has been saved.
	read -p "Please provide your place of birth (alphabetical characters only): " country
	if [[ "$country" =~ [^a-zA-Z] ]]
	then
		while [[ "$country" =~ [^a-zA-Z] ]]
		do
			echo -e "\nentered while loop \n"
			read -p "you entered non alphabetical characters,please provide your place of birth(alphabetical characters): " country
		done
	fi
	echo -e "Country: $country\n" >> userprofile.txt
	echo -e "\nPlaceOfBirth has been saved.\n"
elif [ "$answer" = "no" ]
then
	echo -e "\n you answered no,exitting program"
else
	echo -e "\n you gave incorrect input,exitting program"
fi