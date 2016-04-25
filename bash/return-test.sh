#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

# The largest positive value a function can return is 255.
return_test ()	# Returns whatever passed to it.
{
	return $1
}
clear		# Clear the screen
echo -e '\E[37;44m'"\033[1mReturn Tester\033[0m"
echo ""
return_test 11
echo "11 =>" $? "(OK)"
return_test 22
echo "22 =>" $? "(OK)"
return_test 33
echo "33 =>" $? "(OK)"
return_test 44
echo "44 =>" $? "(OK)"
return_test 88
echo "88 =>" $? "(OK)"
return_test 111
echo "111 =>" $? "(OK)"
return_test 222
echo "222 =>" $? "(OK)"
return_test 255
echo "255 =>" $? "(OK)"
return_test 257
echo "257 =>" $? "(ERROR)"
echo
echo

exit 0
