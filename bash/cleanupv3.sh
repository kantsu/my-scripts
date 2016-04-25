#!/bin/bash
# Cleanup, version 3 (cleanupv3.sh)
# 2013-11-23

LOG_DIR=/var/log
ROOT_UID=0 # Only users with $UID 0 have root privileges.
LINES=50 # Default number of lines saved.
E_XCD=86 # Can't change directory?
E_NOTROOT=87 # Non-root exit error.

# Run as root, ofc.
if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "Must be root to run this script..."
    exit $E_NOTROOT
fi

if [ -n "$1" ]
# Test whether command-line argument is present(non-empty).
then
    lines=$1
else
    lines=$LINES # Default, if not specified on command-line.
fi

cd $LOG_DIR
if [ `pwd` != "$LOG_DIR" ]

then
    echo "Can't change to $LOG_DIR."
    exit $E_XCD
fi # Doublecheck if in right directory before messing with the logfile.

# Far more efficient way to do this is:
#
# cd /var/log || {
#   echo "Cannot change to necessary directory." >&2
#   exit $E_XCD;
# }

tail -n $lines messages > mesg.temp # Save last section of message log file.
mv mesg.temp messages # Rename it as system log file.

# cat /dev/null > messages
# ^ no longer needed, as the above method is safer.

cat /dev/null > wtmp # ': > wtmp' and '> wtmp' have the same effect.
echo "Log files cleaned up!"

# Note that there are other log files in /var/log not affected by this script.

# A zero return value from the script upon exit indicates SUCCESS! to the shell.
exit 0

