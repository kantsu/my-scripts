#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

PS3='Choose one word: '

# Bash select
select word in "linux" "bash" "scripting" "tutorial"
do
	echo "The word you have selected is: $word"
# Break, otherwise endless loop
 break
done


exit 0
