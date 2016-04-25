#!/bin/bash
# ascii.sh: Generates an ASCII-table
# 2013-11-26

exec >ASCII.txt # Save stdout to file.

MAXNUM=256
COLUMNS=5
OCT=8
OCTSQU=64
LITTLESPACE=-3
BIGSPACE=-5

i=1 # Decimal counter.
o=1 # Octal counter.

while [ "$i" -lt "$MAXNUM" ]; do
    paddi="    $i"
    echo -n "${paddi: $BIGSPACE}    "
    paddo="00$o"
echo -ne "\\0${paddo: $LITTLESPACE}"
echo -n "    "
    if (( i % $COLUMNS == 0)); then
        echo
fi
((i++, o++)) # The octal notation for 8 is 10, and 64 decimal is 100 octal.
(( i % $OCT == 0)) && ((o+=2))
(( i % $OCTSQU == 0)) && ((o+=20))
done
exit $?
