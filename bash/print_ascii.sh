#!/bin/bash
# print_ascii.sh: Print ASCII chart
# Usage: ascii [oct|dec|hex|help|8|10|16]
# 2013-11-26

[ -n "$BASH_VERSION" ] && shopt -s extglob

case "$1" in
    oct|[Oo]?([Cc][Tt])|8) Obase=Octal; Numy=3o;;
    hex|[Hh]?([Ee][Xx])|16|[Xx]) Obase=Hex; Numy=2x;;
    help|?(-)[h?]) sed -n '2,/^[ ]*$/p' $0;exit;;
    code|[Cc][Oo][Dd][Ee]) sed -n '/case/,$p' $0;exit;;
*) Obase=Decimal
esac

printf "\t\t## $Obase ASCII Chart ##\n\n"; FM1="|%0${Numy:-3d}"; LD=-1

AB="nul soh stx etx eot enq ack bel bs tab nl vt np cr so si dle"
AD="dc1 dc2 dc3 dc4 nak syn etb can em sub esc fs gs rs us sp"

for TOK in $AB $AD; do ABR[$((LD+=1))]=$TOK; done;
ABR[127]=del
IDX=0

while [ $IDX -le 127 ] && CHR="${ABR[$IDX]}"
    do ((${#CHR}))&& FM2='%-3s'|| FM2=`printf '\\\\%o    ' $IDX`
        printf "$FM1 $FM2" "$IDX" $CHR; (( (IDX+=1)%8))|echo '|'
    done
exit $?
