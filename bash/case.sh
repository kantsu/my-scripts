#!/bin/bash
#---------------------------#
# case.sh		    #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

echo "What is your preferred programming / scripting language? "
echo "1) bash"
echo "2) perl"
echo "3) python"
echo "4) c++"
echo "5) I do not know!"
read case;
# Simple case bash structure
# note in this case $case is variable and does not have to
# be named case this is just an example
case $case in
	1) echo "You selected bash";;
	2) echo "You selected perl";;
	3) echo "You selected python";;
	4) echo "You selected c++";;;
	5 exit
esac
