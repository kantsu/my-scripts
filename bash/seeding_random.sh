#!/bin/bash
# seeding_random.sh: Seeding the RANDOM variable.

MAXCOUNT=25

random_numbers()
{
count=0
while [ "$count" -lt "$MAXCOUNT" ]
do
    number=$RANDOM
    echo -n "$number "
    let "count += 1"
done
}

echo; echo
RANDOM=1
random_numbers

echo; echo "Trying again with same random seed..."

RANDOM=1
random_numbers
echo; echo

RANDOM=2
random_numbers

echo; echo

SEED=$(head -1 /dev/urandom |od -N 1 | awk '{ print $2 }')
RANDOM=$SEED
random_numbers
echo; echo
exit 0
