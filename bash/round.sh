#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#


# Get floating point number =(^_^)=
floating_point_number=3.3446
echo $floating_point_number

# Round floating point number with Bash
for bash_rounded_number in $(printf %.0f $floating_point_number); do
echo "Rounded number with Bash:" $bash_rounded_number
done
