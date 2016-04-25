#!/bin/bash
#---------------------------#
# bash_if_else.sh	    #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#


directory="./BashScripting"

# bash check if directory exists
if [ -d $directory ]; then
	echo "Kansio on olemassa. (1)"
else
	echo "Kansio ei ole olemassa. (0)"
fi
