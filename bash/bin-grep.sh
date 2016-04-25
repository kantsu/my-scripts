#!/bin/bash
# bin-grep.sh: Locates matching strings in a binary file.
# Similar effect to "grep -a"

E_BADARGS=65
E_NOFILE=66

if [ $# -ne 2 ]
then
echo "Usage: `basename $0` search_string filename"
exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
echo "File \"$2\" does not exist."
exit $E_NOFILE
fi

IFS=$'\012'
for word in $( strings "$2"| grep "$1" )
do
echo $word
done

exit 0

