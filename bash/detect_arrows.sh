#!/bin/bash
 uparrow=$'\x1b[A'
 downarrow=$'\x1b[B'
 leftarrow=$'\x1b[D'
 rightarrow=$'\x1b[C'

read -s -n3 -p "Hit an arrow key: " x
case "$x" in
 $uparrow)
 echo "You pressed up-arrow"
 ;;
 $downarrow)
 echo "You pressed down-arrow"
 ;;
 $leftarrow)
 echo "You pressed left-arrow"
 ;;
 $rightarrow)
 echo "You pressed right-arrow"
 ;;
esac
exit $?
