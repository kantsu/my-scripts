#!/bin/bash
#---------------------------#
# declarearrays.sh	    #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#


# Declare array with 4 elements
ARRAY=( 'nro 1' 'nro 2' nro3 nro4 )
# Get number of elements in the array
ELEMENTS=${#ARRAY[@]}

# echo each element in array
# for loop
for (( i=0;i<$ELEMENTS;i++)); do
	echo ${ARRAY[${i}]}
done
