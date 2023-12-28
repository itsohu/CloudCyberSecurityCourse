#!/bin/bash
#searchTextFiles script.
#This script allows user to search for a textfile by using keywords found in it.

#searchWelcome.txt is my program welcome text,which is shown using cat command
cat searchWelcome.txt
sleep 1
echo -e "\nWelcome to my search program"
echo -e "You may look for your file using a keyword that exists in the file.\n"
echo "Please enter a keyword: "
#Below if statement,it runs if user enters input within 5 seconds,the script runs.
#If user fails to enter input within 5 seconds,program stops running. 
if read -t 5 keywordS
then
	echo "you entered $keywords"
else
	echo -e "\nYou took too much time to respond\n"
	echo "Bye"
fi
