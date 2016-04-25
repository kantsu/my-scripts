#!/bin/bash
# progressbar.sh: A Progress Bar
# Thanks to www.tldp.org !!
# 2013-11-25

BAR_WIDTH=50
BAR_CHAR_START="["
BAR_CHAR_END="]"
BAR_CHAR_EMPTY="."
BAR_CHAR_FULL="="
BRACKET_CHARS=2
LIMIT=100

print_progress_bar()
{
# Calculate how many characters will be full.
    let "full_limit = ((($1 - $BRACKET_CHARS) * $2) / LIMIT"
# Calculate how many characters will be empty.
    let "empty_limit = ($1 - $BRACKET_CHARS) - ${full_limit}"
# Prepare the bar.
    bar_line="${BAR_CHAR_START}"
    for ((j=0; j<full_limit; j++)); do
        bar_line="${bar_line}${BAR_CHAR_FULL}"
    done
    for ((j=0; j<empty_limit; j++)); do
        bar_line="${bar_line}${BAR_CHAR_EMPTY}"
    done
    bar_line="${bar_line}${BAR_CHAR_END}"
    printf "%3d%% %s" $2 ${bar_line}
}

# Sample code that uses it...
#MAX_PERCENT=100
#for ((i=0; i<=MAX_PERCENT; i++)); do
 #   usleep 10000

#print_progress_bar ${BAR_WIDTH} ${i}
#echo -en "\r"
#done
#echo ""
exit
