#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#
# Tests files and gives information! (2013-09-18)

FILENAME=testfile.txt
file_name=$(stat -c%n "$FILENAME")	# Same as "$FILENAME" of course.
file_owner=$(stat -c%U "$FILENAME")
file_size=$(stat -c%s "$FILENAME")
# Certainly easier than using "ls -l $FILENAME"
#+ and then parsing with sed.
file_inode=$(stat -c%i "$FILENAME")
file_type=$(stat -c%F "$FILENAME")

echo "Information about $FILENAME"
echo "Name:	$file_name"
echo "Owner:	$file_owner"
echo "Size:	$file_size"
echo "Inode:	$file_inode"
echo "Type:	$file_type"

exit 0
