#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#
# Bash for loop

for f in $( ls /var/ ); do
	echo $f
done
