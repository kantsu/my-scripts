#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#
# Arabic number to Roman numeral converter
# Range: 0 - 200
# Usage: roman number-to-convert

LIMIT=200
E_ARG_ERR=65
E_OUT_OF_RANGE=66

if [ -z "$1" ]
then
	echo "Usage: `basename $0` number-to-convert"
	exit $E_ARG_ERR
fi

# Out of range
num=$1
if [ "$num" -gt $LIMIT ]
then
	echo "Out of range! Give a number between 0 - 200"
	exit $E_OUT_OF_RANGE
fi

to_roman ()	# Must declare function before first call to it.
{
number=$1
factor=$2
rchar=$3
let "remainder = number - factor"
while [ "$remainder" -ge 0 ]
do
	echo -n $rchar
	let "number -= factor"
	let "remainder = number - factor"
done

return $number
	# Exercises:
	# ---------
	# 1) Explain how this function works. (Hint: division by successive substraction!)
	# 2) Extend the range of the function. (Hint: use "echo" and command-substitution capture!)
}


to_roman $num 100 C
num=$?
to_roman $num 90 LXXXX
num=$?
to_roman $num 50 L
num=$?
to_roman $num 40 XL
num=$?
to_roman $num 10 X
num=$?
to_roman $num 9 IX
num=$?
to_roman $num 5 V
num=$?
to_roman $num 4 IV
num=$?
to_roman $num 1 I

# Successive calls to conversion function!
# Is this really necessary? Simplification?!

echo
exit
