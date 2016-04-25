#!/bin/bash
#---------------------------#
# filetesting.sh	    #
# 2013-09-19                #
# benefit@kantsu.fi	    #
#---------------------------#

file="./file"
if [ -e $file ]; then
	echo "File exists."
else
	echo "File does NOT exist."
fi

