#!/bin/bash 

# To eliminate the need to use quotation marks, which can 
# interfere with embedded strings - make them more difficult to use
# we can use a "here script". this is IS redirection

# Note, the use of <<- where the "-" command ignores leading tabs

title="My system information"
bodyText="Body Text: A Title"

cat <<- _EOF_ # note, EOF can be any non-keyword string 
	<html>
		<head>
			<title>
			$title
			</title>
		</head>

		<body>
			<h1>$bodyText</h1>
		</body>
	</html>
_EOF_

