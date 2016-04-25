#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#


COUNT=6
# Bash while loop
while [ $COUNT -gt 0 ]; do
	echo Value of the count is: $COUNT
	let COUNT=COUNT-1
done
