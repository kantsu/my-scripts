#!/bin/bash
# wgetter2.sh: Bash script to make wget a bit more friendly, and save typing.
# 2013-11-25

# Error codes for abnormal exit.
E_USAGE=67       # Usage message, then quit.
E_NO_OPTS=68     # No command-line args entered.
E_NO_URLS=69     # No URLs passed to script.
E_NO_SAVEFILE=70 # No save filename passed to script.
E_USER_EXIT=71   # User decides to quit.

# Basic default wget command we want to use.
CommandA="wget -nc -c -t 5 --progress=bar --random-wait --proxy=on -r"

# Some variables.
pattern=" -A .jpg,.JPG,.jpeg,.JPEG,.gif,.GIF,.htm,.html,.shtml,.php"
today=`date +%F`
home=$HOME
depthDefault=3
Depth=$depthDefault
RefA=""
Flag=""

lister=""
Woptions=""
inFile=""
newFile=""
savePath="$home/w-save"
Config="$home/.wgetter2rc"

Cookie_List="$home/.cookielist"
cFlag=""

# Define options available...
save=s
cook=c
help=h
list=l
runn=r
inpu=i
wopt=w
# ---------------------------

if [ -z "$1" ]; then
    echo "You must at least enter a URL or option!"
    echo "-$help for usage."
    exit $E_NO_OPTS
fi

if [ ! -e "$Config" ]; then
echo "Creating configuration file, $Config"
echo "# This is the configuration file for wgetter2" > "$Config"
echo "# Your customized settings will be saved in this file" >> "$Config"
else
    source $Config
fi

if [ ! -e "$Cookie_List" ]; then
# Set up a list of cookie files, if there isn't one.
echo "Hunting for cookies . . ."
find -name cookies.txt >> $Cookie_List # Create the list of cookie files
fi

if [ -z "$cFlag" ]; then
echo
echo "Looks like you haven't set up your source of cookies yet."
n=0

while read; do
    Cookies[$n]=$REPLY
    echo "$n) ${Cookies[$n]}"
    n=$(( n + 1 ))
done < $Cookie_List
echo "Enter the number of cookie file you want to use."
echo "If you won't need cookies, press RETURN."
echo
echo "Edit $Config !"
echo
read
if [ ! -z $REPLY ]; then
    Cookie=" --load-cookies ${Cookies[$REPLY]}"
    echo "Cookie=\" --load-cookies ${Cookies[$REPLY]}\"" >> $Config
    fi
    echo "cFlag=1" >> $Config
fi

CookiesON=$Cookie

wopts()
{
echo "Enter options to pass to wget."
echo "It is assumed you know what you're doing."
echo
echo "You can pass their arguments here too."

read Wopts
Woptions=" $Wopts"
echo "passing options ${Wopts} to wget"
return
}

save_func()
{
echo "Settings will be saved."
if [ ! -d $savePath ]; then
    mkdir $savePath
fi
Flag=S
return
}

usage()
{
    echo "Welcome to wgetter. This is a front end to wget."
    echo "It will always run wget with these options:"
    echo "$CommandA"
    echo "and the pattern to match: $pattern \
(which you can change at the top of this script)."
    echo "It will also ask you for recursion depth. \
and if you want to use a referring page."
    echo "Wgetter accepts the following options:"
    echo ""
    echo "-$help : Display this help."
    echo "-$save : Save the command to a file $savePath/wget-($today) \
instead of running it."
    echo "-$runn : Run saved wget commands instead of starting a new one -"
    echo "Enter filename as argument to this option."
    echo "-$inpu : Run saved wget commands interactively --"
    echo "The script will ask you for the filename."
    echo "-$cook : Change to cookies file for this session."
    echo "-$list : Tell wget to use URL's from a list instead of \
from the command-line."
    echo "-$wopt : Pass any other options direct to wget:"
    echo ""
    echo "See the wget man page for addition options you can pass to wget."
    echo ""

    exit $E_USAGE # End here. Don't process anything else.
}

list_func()
{
while [ 1 ]; do
    echo "Enter the name of the file containing URL's (press q to change your mind)."
    read urlfile
    if [ ! -e "$urlfile" ] && [ "$urlfile" != q ]; then
    echo "That file does not exist!"
    elif [ "$urlfile" = q ]; then
    echo "Not using a url list."
return
    else
    echo "using $urlfile."
    echo "If you gave URL's on the command-line, I'll use those first."
lister=" -i $urlfile"
return
fi
done
}

cookie_func()
{
while [ 1 ]; do
    echo "Change the cookies file, press RETURN if you don't wanna change it."
read Cookies
if [ -z "$Cookies" ]; then
return
elif [ ! -e "$Cookies" ]; then
echo "File does not exist. Try again!"
else
CookiesON=" --load-cookies $Cookies"
return
fi
done
}

run_func()
{
if [ -z "$OPTARG" ]; then
if [ ! -d "$savePath" ]; then
echo "$savePath does not appear to exist."
echo "Pleas supply path and filename of saved wget commands!"
read newFile
    until [ -f "$newFile" ]; do
    echo "Sorry, that file does not exist. Please try again!"
read newFile
done

filePath="${newFile}"
else
    echo "Save path is $savePath"
    echo "Please enter name of the file which you want to use."
    echo "You have a choice of:"
    ls $savePath
    read inFile
    until [ -f "$savePath/$inFile" ]; do
if [ ! -f "${savePath}/${inFile}" ]; then
    echo "Sorry, that file does not exist. Please choose from:"
    ls $savePath
    read inFile
fi
done
filePath="${savePath}/${inFile}"
fi
else filePath="${savePath}/${OPTARG}"
fi

if [ ! -f "$filePath" ]; then
echo "You did not specify a suitable file."
echo "Run this script with the -${save} option first."
echo "Aborting..."
exit $E_NO_SAVEFILE
fi
echo "Using: $filePath"
while read; do
    eval $REPLY
    echo "Completer: $REPLY"
done < $filePath
exit
}

while getopts ":$save$cook$help$list$runn:$inpu$wopt" opt
do
case $opt in
    $save) save_func;;
    $cook) cookie_func;;
    $help) usage;;
    $list) list_func;;
    $runn) run_func;;
    $inpu) run_func;;
    $wopt) wopts;;
\?) echo "Not a valid option."
    echo "Use -${wopt} to pass options directly to wget,"
    echo "or -${help} for help";;
esac
done
shift $((OPTIND - 1))
if [ -z "$1" ] && [ -z "$lister" ]; then
echo "No URL's given! Enter them in the same line as wgetter2"
exit $E_NO_URLS
fi

URLS=" $@"

while [ 1 ]; do
if [-z $curDepth ]; then
    Current=""
    else Current=" Current value is $curDepth"
fi
    echo "How deep should I go? (integer: Default is $depthDefault.$Current)"
read Depth
inputB=""
echo "Enter the name of the referring page (default = NONE)."
read inputB

echo "Do you want to have the output logged to the terminal?"
echo "(y/n, default is yes)?"
read noHide

case $noHide in
y|Y ) hide="";;
n|N ) hide=" -b";;
* ) hide="";;
esac

if [ -z ${Depth} ]; then
if [ -z ${curDepth} ]; then
Depth="$depthDefault"
else Depth="$curDepth"
fi
fi
Recurse=" -l $Depth"
curDepth=$Depth

if [ ! -z $inputB ]; then
    refA=" --referer=$inputB"
fi

WGETTER="${CommandA}${pattern}${hide}${RefA}${Recurse}${CookiesON}${lister}${Woptions}${URLS}"
if [ -z "$CookiesON" ] && [ "$cFlag" = "1" ]; then
echo "Warning -- can't find cookie file"
fi

if [ "$Flag" = "S" ]; then
echo "$WGETTER" >> $savePath/wget-${today}
echo "$inputB" >> $savePath/site-list-${today}
echo "Command saved to the file $savePath/wget-${today}"
echo "Referring page URL saved to the file $savePath/site-list-${today}
Saver=" with save option"
else
echo "*************"
echo "***GETTING***"
echo "*************"
echo ""
echo "$WGETTER"
echo ""
echo "*************"
eval "$WGETTER"
fi

echo ""
echo "Starting over$Saver."
echo "If you want to stop, press q."
echo "Otherwise, enter some URL's:"
read
case $REPLY in
q|Q ) exit $E_USER_EXIT;;
** ) URLS=" $REPLY";;
esac
echo ""
done
exit 0
