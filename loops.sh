#!/bin/bash

<< LOOPS

Main loops are while, until and for

While and until are almost the same, with these differences.

While continues while the condition is true
Until continues while the condition is false

While checks the condition at the end of the loop
Until checks the condition at the beginning of the loop

LOOPS

num=10
echo Countdown

while [ "$num" -ne 0 ];
do
	echo "$num"
	num=$(( num - 1 ))

	if [ "$num" -eq 0 ]; then
		echo "$num"
		echo LIFT OFF!
	fi
done

num=0
echo Countup
until [ "$num" -eq 10 ];
do
	echo "$num"
	num=$(( num + 1 ))

	if [ "$num" -eq 10 ]; then
		echo "$num"

		echo LIFT ON!
	fi
done

# Now, lets create a menu
selection=
until [ "$selection" = "0" ]; do
	echo "
	PROGRAM MENU
	1 - Display disk space
	2 - Display free memory
	3 - List files in CWD
	0 - Exit program
	"
	echo Enter selection: 
	read selection
	case $selection in
		1 ) df ;;
		2 ) free ;;
		3 ) ls -la ;;
		0 ) exit ;;
		* ) echo Please enter 1, 2, 3, or 0
	esac
done
