#!/bin/bash
# temp_filename_generator:sh: Generates a temporary filename.
# 2013-11-26

BASE_STR=`mcookie`
POS=11
LEN=5

prefix=temp

suffix=${BASE_STR:POS:LEN}
temp_filename=$prefix.$suffix

echo "Temporary filename = "$temp_filename""

# temp.e19ea
