#!/bin/bash
#---------------------------#
# arithmetric_operations.sh #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#
echo '#### LET ####'

# Addition
let ADDITION=255+256
echo "Yhteenlasku, addition (255 + 256 =" $ADDITION")"
	#echo "255 + 256 =" $ADDITION
echo ""
# Substraction
let SUBSTRACTION=187-156
echo "Vähennyslasku, substraction (187 - 156 =" $SUBSTRACTION")"
	#echo "(Substraction)7 - 8 =" $SUBSTRACTION
echo ""
# Multiplication
let MULTIPLICATION=33*88
echo "Kertolasku, multiplication (33 * 88 =" $MULTIPLICATION")"
	#echo "(Multiplication)5 * 8 =" $MULTIPLICATION
echo ""
# Division
let DIVISION=420/187
echo "Jakolasku, division (420 / 187 =" $DIVISION")"
	#echo "(Division)4 / 2 =" $DIVISION
echo ""
# Modulus
let MODULUS=77%7
echo "Modulus, yo (77 % 7 =" $MODULUS")"
	#echo "(Modulus)9 % 4 =" $MODULUS
echo ""
# Power Of Two
let POWEROFTWO=2**2
echo "Power of two, hehz (2 ** 2=" $POWEROFTWO")"
	#echo "(Power of two)2 ^ 2 =" $POWEROFTWO
echo ""
echo ""
# ------------------------------------------------------------- #
echo '### Bash Arithmetic Expansion ###'

# There are two formats for arithmetic expansion: $[ expression ]
#+ and $(( expression #))
#+ It's your choice which you use
echo 4 + 5 = $((4 + 5))
echo 7 - 7 = $[ 7 - 7 ]
echo 4 x 6 = $((3 * 2))
echo 6 / 3 = $((6 / 3))
echo 8 % 7 = $((8 % 7))
echo 2 ^ 8 = $[ 2 ** 8 ]


#echo '### Read user input and print result ###'
#echo -e "Paina Enteriä...... \c"
## Read user input
#read num1 num2
#declare -i result
#result=$num1+$num2
#echo "Antamasi kahden numeron summa = $result "
#echo ""


# Bash convert binary number 10001
result=2#10001
echo "#######################"
echo "Binary 10001 = $result"
echo ""
# Bash convert octal number 16
result=8#16
echo "Octal 16 = $result"
echo ""
# Bash convert hex number 0xE6A
result=16#E6A
echo "Hex 0xE6A = $result"
echo ""
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"
echo "IM TOO HIGH FOR THIS"

