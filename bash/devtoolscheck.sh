#!/bin/sh
# devtoolscheck.sh
# 2013-09-26
gcc -v
if [ $? =! 0 ]; then
	echo "GCC is not installed!"
fi
ld -v
if[ $? != 0 ]; then
	echo "Please install binutils!"
fi
