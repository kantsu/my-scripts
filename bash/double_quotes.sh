#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

# Declare bash string variable
BASH_VAR="Bash Script"

# Echo variable BASH_VAR
echo $BASH_VAR

# Meta characters and its special meaning in bash is
#+ suppressed when using double quotes except "$", "\" and "`"

echo "It's $BASH_VAR and \"$BASH_VAR\" using backticks: `date`"

