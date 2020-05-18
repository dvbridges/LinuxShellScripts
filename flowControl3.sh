#!/bin/bash


# This looks at the For loop
# See ./postionalParams.sh for while and until loops

<< FORLOOP
The for loop pattern looks like this

for variable in words; do
    commands
done
FORLOOP

# Loop through some literals
for num in 1 2 3; do
	echo $num
done

# Loop through a file
for word in $(cat ./helloWorld); do
	echo "$word"
done

# Loop through current dir list
for word in $(ls); do
	echo "$word"
done

# Loop through positional params from CLI
for param in $@;do
	echo $param
done
