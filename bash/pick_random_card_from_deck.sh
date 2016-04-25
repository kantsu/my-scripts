#!/bin/bash
# pick_random_card_from_deck.sh
# 2013-11-24

# This is an example of choosing random elements of an array.

# Pick a card, any card.

Suites="Clubs
Diamonds
Hearts
Spades"

Denominations="2
3
4
5
6
7
8
9
10
Jack
Queen
King
Ace"

# Note variables spread over multiple lines.

suite=($Suites) # Read into array variable.
denomination=($Denominations)

num_suites=${#suite[*]} # Count how many elements.
num_denominations=${#denomination[*]}

echo -n "${denomination[$((RANDOM%num_denominations))]} of "
echo ${suite[$((RANDOM%num_suites))]}

# $bozo sh pick_random_card_from_deck.sh
# Jack of Clubs
exit 0
