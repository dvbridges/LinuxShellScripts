#!/bin/bash

# Read user input from the keyboard

echo Please enter your name:
read text
echo Helllooo "$text"

echo Please enter a number "$text":
read n1
echo Please enter another number "$text":
read n2

# Notice, in the arithmetic command, 
# the vars do not need a reference using $ 
echo "$n1 + $n2 = $(( n1 + n2 ))"
echo "$n1 - $n2 = $(( n1 - n2 ))"
echo "$n1 * $n2 = $(( n1 * n2 ))"
echo "$n1 / $n2 = $(( n1 / n2 ))"
echo "$n1 ** $n2 = $(( n1 ** n2 ))"
echo "$n1 % $n2 = $(( n1 % n2 ))"

