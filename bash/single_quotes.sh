#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

# Declare bash script variable
BASH_VAR="Bash Script"

# Echo varialbe BASH_VAR
echo $BASH_VAR

# Meta characters special meaning in bash is suppressed
#+ when using single quotes
echo '$BASH_VAR "$BASH_VAR"'
