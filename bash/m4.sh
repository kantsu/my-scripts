#!/bin/bash
# m4.sh: Using the m4 macro processor.
# 2013-11-26

# strings
string=abcdA01
echo "len($string)" | m4
echo "substr($string,4)" | m4
echo "regexp($string,[0-1][0-1],\&Z)" | m4

# arithmetic
var=99
echo "incr($var)" | m4
echo "eval($var / 3)" | m4

exit
