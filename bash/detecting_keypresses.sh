#!/bin/bash
# detecting_keypresses.sh: Detecting keypresses like a boss.
# 2013-11-27

key="no value yet"
while true; do
clear
echo "Bash extra keys demo. Keys to try:"
echo
echo "* Insert, Delete, Home, End, Page_Up and Page_Down."
echo "* The four arrow keys."
echo "Tab, enter, escape and space key."
echo "The letter and number keys, etc..."
echo
echo "    d = show date/time"
echo "    q = quit"
echo "=================================="
echo

# Convert the separate home-key to home-key_num_7.
if [ "$key" = $'\x1b\x4f\x48' ]; then
key=$'\x1b\x5b\x31\x7e'
fi

# Convert the separate end-key to end-key_num_1.
if [ "$key" = $'\x1b\x4f\x46' ]; then
key=$'\x1b\x5b\x34\x7e'
fi

case "$key" in

$'\x1b\x5b\x32\x7e') # Insert
echo Insert Key
;;

$'\x1b\x5b\x33\x7e') # Delete
echo Delete Key
;;

$'\x1b\x5b\x31\x7e') # Home_key_num_7
echo Home Key
;;

$'\x1b\x5b\x34\x7e') # End_key_num_1
echo End Key
;;

$'\x1b\x5b\x35\x7e') # Page Up
echo Page Up
;;

$'\x1b\x5b\x36\x7e') # Page Down
echo Page Down
;;

$'\x1b\x5b\x41') # Up Arrow
echo Up Arrow
;;

$'\x1b\x5b\x42') # Down arrow
echo Down Arrow
;;

$'\x1b\x5b\x43') # Right Arrow
echo Right Arrow
;;

$'\x1b\x5b\x44') # Left Arrow
echo Left Arrow
;;

$'\x09') # Tab
echo Tab Key
;;

$'\x0a') # Enter
echo Enter Key
;;

$'\x1b') # Escape
echo Escape Key
;;

$'\x20') # Space
echo Space Key
;;

d)
date
;;

q)
echo Time to quit...
echo
exit 0
;;

*)
echo You pressed: \'"$key"\'
;;

esac
echo
echo "=================================="

unset K1 K2 K3
read -s -N1 -p "Press a key: "
K1="$REPLY"
read -s -N2 -t 0.001
K2="$REPLY"
read -s -N1 -t 0.001
K3="$REPLY"
key="$K1$K2$K3"
done

exit $?
