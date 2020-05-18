#!/bin/bash 

# Here, we look at switch cases, for loops and building a menu

<< CASES

case selectively executes statements if word matches a pattern. 
case word in
    patterns ) commands ;;
esac

You can use multiple patterns, and use regex

CASES


echo Enter a number between 1 and 3:
read char

# Without regex
case $char in
	1 ) echo "You entered a one"
		;;
	2 ) echo "You entered a two"
		;;
	3 ) echo "You entered a three"
		;;
	* ) echo You did not enter a valid number
esac

# With regex
echo Enter another number between 1 and 3:
read char
case $char in
	[1-3] ) echo "You entered $char"
		;;
	[a-Z] ) echo "You entered a letter, not a number"
		;;
	* ) echo You did not enter a valid number
esac


