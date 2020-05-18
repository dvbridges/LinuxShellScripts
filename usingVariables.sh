#!/bin/bash 

title="My system information: "
bodyText="Body Text: "

# Access environment variables 
# E.g., $HOSTNAME
# Use the following command for a list of environment vars
# $ printenv 

# Constants
MATH_PI=3.14

# String formatting
formatStr="The value of Pi is: ${MATH_PI}" 

# Assign command result to variable i.e., $(command)
currentDate=$(date +"%x %r %Z")
# E.g., store all folders and files in cwd
allVars=$(ls)

cat <<- _EOF_ # note, EOF can be any non-keyword string 
	<html>
		<head>
			<title>
			$title $HOSTNAME
			</title>
		</head>

		<body>
			<h1>$bodyText $HOSTNAME</h1>
			<p>$formatStr</p>
			<p>$allVars</p>
		</body>
	</html>
_EOF_


