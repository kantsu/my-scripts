#!/bin/bash
#---------------------------#
# readfile.sh		    #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#


# Declare an array
declare -a ARRAY
# Link filedescriptor 10 with stdin
exec 10<&0
# stdin replaced with a file supplied as a first argument
exec < $1
let count=0

while read LINE; do

	ARRAY[$count]=$LINE
	((count++))
done

echo Number of elements: ${#ARRAY[@]}
# echo array's content
echo ${ARRAY[@]}
# Restore stdin from filedescriptor 10
# And close filedescriptor 10
exec 0<&10 10<&-
