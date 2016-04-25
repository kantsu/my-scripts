#!/bin/bash
# Exercising "eval"
# 2013-11-25
# Ps. Jennin synttärit huomenna :)

y=`eval ls -l` # Similar to y=`ls -l`, but linefeeds removed because
    # "echoed" variable is unquoted.
echo $y
echo
echo "$y"    # Linefeeds preserved when variable is quoted.
echo; echo

y=`eval df` # Similar to y=`df`, but linefeeds are removed.
echo $y

# When linefeeds are not preserved, it may make it easier to parse output using utilities such as "awk".

echo
echo "========================================================"
echo

eval "`seq 3 | sed -e 's/.*/echo var&=ABCDEFGHIJ/'`"
# var1=ABCDEFGHIJ
# var2=ABCDEFGHIJ
# var3=ABCDEFGHIJ

echo
echo "========================================================"
echo

version=3.4
echo "version = $version"
eval major=${version/./;minor=}
echo Major: $major, minor: $minor
