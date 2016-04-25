#!/bin/bash
# echo_colored_text.sh: Script name tells the topic.
# 2013-11-26

black='\E[30;47m'
red='\E[31;47m'
green='\E[32;47m'
yellow='\E[33;47m'
blue='\E[34;47m'
magenta='\E[35;47m'
cyan='\E[36;47m'
white='\E[37;47m'

alias Reset="tput sgr0" # Reset text attributes to normal without clearing screen.

cecho () # Color-echo.
         # Argument $1 = message, Argument $2 = color.
{
local default_msg="Not enough arguments. (No message passed to the script)"
message=$(1:-$default_msg) # Default to default message.
color=$(2:-$black)         # Defaults to black, if not specified.

    echo -e "$color"
    echo "$message"
    Reset # Reset to normal.
return
}

# Now, lets try this out!
cecho "Feeling blue..." $blue
cecho "Magenta looks really nice, doesn't it?" $magenta
cecho "Doctor Greenthumb ^_^" $green
cecho "My eyes aren't colored liek this text..." $red
cecho "Cyan, more familiarly known as water colored(aqua)." $cyan
cecho "No color passed.................BLACK!" # Missing $color argument...
cecho "\"Empty\" color passed. # Empty $color argument...
cecho
# Missing $message and $color arguments...
cecho "" ""
# Empty $message and $color arguments...

echo
exit 0
