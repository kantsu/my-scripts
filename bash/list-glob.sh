#!/bin/bash
# list-glob.sh: Generating [list] in a for-loop, using "globbing" ...
# Globbing = filename expansion
# 2013-11-27

echo

for file in *
do
    ls -l "$file"
done

echo; echo

for file in [jx]*
do
# rm -f $file - Removes only files beginning with "j" or "x" in $PWD
echo "Removed file \"$file\"".
done
echo
exit 0
