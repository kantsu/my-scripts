#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

# Declare bash string variable
BASH_VAR="Bash Script"

# Echo variable BASH_VAR
echo $BASH_VAR

# When meta character such as "$" is escaped with "\" it will be read literally
echo \$BASH_VAR

# Backslash has also special meaning and it can be suppressed with yet another "\"
echo "\\"
