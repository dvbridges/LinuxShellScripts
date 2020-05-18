#!/bin/bash

<< IF_COMMENT

If statements take the format of

if commands; then
	commands
[elif commands; then
	commands...]
[else
	commands]
fi

IF_COMMENT

if false; then 
	echo False
elif false; then
	echo False again
else
	echo Its true
fi

 
<< TEST_COMMENTS

test commands are most often used with if statements
to perform true/false evaluations

# First form

test expression

# Second form

[ expression ]

TEST_COMMENTS

s1="string"
s2="string"
file=index.html  # the filename to check

if [ $s1 = $s2 ]; then
	if [ -f $file ]; then
		echo "$file is real"
	else
		echo "$file is not real"
	fi
fi

# Test for root user

if [ $(id -u) != "0" ]; then
	echo "You must be superuser to run this file ;)" >&2
	exit 1
else
	echo Not superuser
	exit 0
fi


