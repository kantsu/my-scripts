#!/bin/bash
# music.sh: Play music! :D
# 2013-11-25

# /dev/dsp default = 8000 frames per second, 8bits per frame (1 byte)
# +1 channel (mono)

duration=2000
volume=$'\xc0'
mute=$'\x80'

function mknote ()
{
    for t in `seq 0 $duration`
    do
        test $(( $t % $1 )) = 0 && echo -n $volume || echo -n $mute
    done
}

e=`mknote 49`
g=`mknote 41`
a=`mknote 36`
b=`mknote 32`
c=`mknote 30`
cis=`mknote 29`
d=`mknote 27`
n=`mknote 32767`

echo -n "$g$e2$d$c$d$c$a$g$n$g$e$n$g$n$g$e2$d$c$b$cis$n$cis$d \
$n$g$e2$d$c$d$c$a$g$n$g$e$n$g$a$d$c$b$a$b$c" > dev/dsp
# dsp = Digital Signal Processor

exit
