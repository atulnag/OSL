#!/bin/bash

echo "Please enter your name:"
read USERNAME

#Check for File
if [ -s ${USERNAME}_DAT ]; then
	# Read the age from the file
	AGE=`cat ${USERNAME}_DAT`
	echo "You are $AGE years"
else
	#ASk user for his/her age
	echo "How old are you?"
	read AGE

	if [ "$AGE" -le 20 ]; then
		echo "You are too young!"
	else
		if [ "$AGE" -ge 100 ]; then
			echo "You are too old"
		else
			#write the age to a new file
			echo $AGE > ${USERNAME}_DAT
		fi
	fi
fi


