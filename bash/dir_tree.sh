#!/bin/bash
# tree.sh

search () {
for dir in `echo *`
do

if [ -d "$dir" ]; then
    zz=0
    while [ $zz != $1 ]
        do
        echo -n "| "
        zz=`expr $zz + 1`
    done
if [ -L "$dir" ]; then
echo "+---$dir" `ls -l $dir | sed 's/^.*'$dir' //'`
    else
    echo "+---$dir"
    numdirs=`expr $numdirs +1`
    if cd "$dir"; then
    search `expr $1 + 1`
cd ..
fi
fi
fi
done
}

if [ $# != 0 ]; then
cd $1
#else #stay in current directory
fi

echo "Initial directory = `pwd`"
numdirs=0

search 0
echo "Total directories = $numdirs"
exit 0
