#!/bin/bash
# unset.sh: Unsetting a variable.
# 2013-11-25

variable=hello
echo "variable = $variable"

unset variable

echo "(unset) variable = $variable"

if [ -z "$variable" ]
then
    echo "\$variable has zero length."
fi

exit 0
