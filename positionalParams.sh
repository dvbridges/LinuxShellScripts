#!/bin/bash

# Here we show how to take command line args and use them in the script

echo "Positional Parameters"
echo '$0 = ' $0  # The filename 
echo '$1 = ' $1  # arg 1
echo '$2 = ' $2  # arg 2
echo

# A simple way to detect whether params have been entered
if [ "$1" != "" ]; then 
	echo "Parameter 1: $1"
else
	echo "No parameters detected"
fi

# Another way to check for params is to count them
if [ "$#" -ne 0 ]; then
	echo We have $# arguments
else
	echo We have no arguments
fi

# The following example shows how to take command line args
# and use them to create an interactive session of naming a file
# which is then used to output a html file, created from a template
# in another file

echo
interactive=0
filename=generic.html

usage()
{
    echo "usage: sysinfo_page [[[-f file ] [-i]] | [-h]]"
}

while [ "$1" != "" ]; do
    case $1 in
        -f | --file )           shift
                                filename=$1
                                ;;
        -i | --interactive )    interactive=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

if [ "$interactive" -eq 1 ]; then 
	echo Interactive is ON
	echo Enter your filename
	read name 
	
	if [ -n "$filename" ]; then
		filename="$name"
	fi
	
	if [ -f "$filename" ]; then
		echo -n "Output file already exists. Overwrite? (y | n) >"
		read resp
		if [ "$resp" != "y" ]; then
			echo "Exiting program"
			exit 1
		fi
	fi 
else
	echo Interactive is OFF
	echo writing to $filename
fi

src="$(./improvedTemplate.sh)"
cat > $filename << _EOF_ 
	<h1>Welcome to your file</h1>
	$src
_EOF_

