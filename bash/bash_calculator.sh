#!/bin/bash
#---------------------------#
# Simple Bash Calculator    #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

# Read user input
echo "Enter input:"
read userinput

# 2 digits after decimal
echo "Result with 2 digits after decimal point:"
echo "scale=2; ${userinput}" | bc
# 10 digits after decimal
echo "Result with 10 digits after decimal point:"
echo "scale=10; ${userinput}" | bc
# As an rounded integer
echo "Result as rounded integer:"
echo $userinput | bc
