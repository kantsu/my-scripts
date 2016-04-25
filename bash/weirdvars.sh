#!/bin/bash
# weirdvars.sh (echoing weird variables.)
# 2013-11-23

echo

var="'(]\\{}\$\""
echo $var   # '(]\{}$"
echo "$var" # '(]\{}$"
# Doesn't make a difference.

echo

IFS='\'
echo $var   # '(] {}$"    \ converted to space!
echo "$var" # '(]\{}$"

echo

var2="\\\\\""
echo $var2   #    "
echo "$var2" # \\"
echo
# But ... var2="\\\\"" is illegal !!
var3='\\\\'
# Strong quoting works, though.
echo "$var3" # \\\\

# ************************************************************** #
# As the first example above shows, nesting quotes is permitted. #

echo "$(echo '"')" # "
#    ^           ^

# At times this comes in useful.
var1="Two bits"
echo "\$var1 = "$var1"" # $var1 = Two bits
#    ^                ^

# Or, as someone points out...
if [[ "$(du "$My_File1")" -gt "$(du "$My_File2")" ]]; then ...

# ************************************************************** #

