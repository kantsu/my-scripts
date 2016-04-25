#!/bin/bash
# noppa.sh: How random is RANDOM?

RANDOM=$$ # Reseed the random number generator using script process ID.

PIPS=6        # A die has 6 pips.
MAXTHROWS=600 # Increase this if you have nothing better to do with your time.
throw=0       # Number of times the dice have been cast.

ones=0        # Must initialize counts to zero, since an uninitialized variable is a null, NOT zero.
twos=0
threes=0
fours=0
fives=0
sixes=0

print_result ()
{
echo
echo "ones =    $ones"
echo "twos =    $twos"
echo "threes =  $threes"
echo "fours =   $fours"
echo "fives =   $fives"
echo "sixes =   $sixes"
echo
}

update_count()
{
case "$1" in
    0) ((ones++));;  # Since a die has no "zero", this corresponds to 1.
    1) ((twos++));;  # And this to 2.
    2) ((threes++));;
    3) ((fours++));;
    4) ((fives++));;
    5) ((sixes++));;
esac
}

echo

while [ "$throw" -lt "$MAXTHROWS" ]
do
    let "die1 = RANDOM % $PIPS"
    update_count $die1
    let "throw += 1"
done

print_result

exit $?
