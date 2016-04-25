#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

COUNT=0
# Bash until loop
until [ $COUNT -gt 5 ]; do
	echo Value of the count is: $COUNT
	let COUNT=COUNT+1
done
