#!/bin/bash
# pid_identifier.sh: Gives complete pathname to process associated with PID.
# 2013-11-25

ARGNO=1 # Number of arguments the script expects.
E_WRONGARGS=65
E_BADPID=66
E_NOSUCHPROCESS=67
E_NOPERMISSION=68
PROCFILE=exe

if [ $# -ne $ARGNO ]
then
    echo "Usage: `basename $0` PID-number" >&2 # Error message >stderr.
    exit $E_WRONGARGS
fi

pidno=$( ps ax | grep $1 | awk '{ print $1 }' | grep $1 )

if [ -z "$pidno" ]
then
    echo "No such process running !!"
    exit $E_NOSUCHPROCESS
fi

if [ ! -r "/proc/$1/$PROCFILE" ] # Check read permission.
then
    echo "Process $1 running, but..."
    echo "Can't get read permission on /proc/$1/$PROCFILE."
    exit $E_NOPERMISSION # Ordinary user can't access some files in /proc
fi

exe_file=$( ls -l /proc/$1 | grep "exe" | awk '{ print $11 }' )

if [ -e "$exe_file" ]
then
    echo "Process $1 invoked by $exe_file."
else
    echo "No such process running at the moment..."
fi

# Thank you www.tldp.org!
exit 0
