#!/bin/bash
# unit-converter.sh: Converts miles/meters to meters/miles.
# 2013-11-26

convert_units ()
{
    cf=$(units "$1" "$2" | sed --silent -e '1p' | awk '{print $2}')
echo "$cf"
}

Unit1=miles
Unit2=meters
cfactor=`convert_units $Unit1 $Unit2`
quantity=3.73

result=$(echo $quantity*$cfactor | bc)

echo "There are $result $Unit2 in $quantity $Unit1."

exit 0
