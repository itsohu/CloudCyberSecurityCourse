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
ls *.txt>tempFile.txt
i=0
myarray=()
if read -t 5 keywordS
then
	echo "you entered $keywordS"
	while read each_line
	do
		myarray[i]=$each_line
		((i++))
	done < "tempFile.txt"
else
	echo -e "\nYou took too much time to respond\n"
	echo "Bye"
fi
#Now while loop to loop through array and search each file for keyword.
arrayLength=${#myarray[@]}
fileNotFoundFlag=0
#0 means not found.
for j in $(seq $arrayLength)
do
	if cat "${myarray[$j-1]}"|grep -q $keywordS
	then
		echo "found file containing $keywordS"
		echo -n "file name is: "
		echo "${myarray[$j-1]}"
		fileNotFoundFlag=1
		break
	fi
done
if [[ $fileNotFoundFlag -eq 0 ]]
then
	echo "no File Found"
fi
rm tempFile.txt
cat searchBye.txt
echo
