#!/bin/bash 

title="My system information: "
bodyText="Body Text: "

# Constants
MATH_PI=3.14

# Functions must contain a body
writePi()
{
	 echo "The value of Pi is: $MATH_PI" 
}

# When you pass args to functions, you need to unpack them
# But no need to list the args in the function param-list
formatStr() 
{
	arg1=$1
	echo "You have inserted $arg1"
}


cat <<- _EOF_ # note, EOF can be any non-keyword string 
	<html>
		<head>
			<title>
			$title $HOSTNAME
			</title>
		</head>

		<body>
			<h1>$bodyText $HOSTNAME</h1>
			<h2>$(writePi)</h2>
			<h2>$(formatStr "this string! Hooray for string formatting")</h2>
		</body>
	</html>
_EOF_


