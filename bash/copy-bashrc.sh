#!/bin/bash
# copies .bashrc from ~/ to /etc/skel/ and after that to everyone's home!
# chmod/chown are necessary.
# 2014-01-27
# copy-bashrc.sh

echo "copy-bashrc.sh initiated!"
 cp -i /home/benefit/.bashrc /etc/skel/.bashrc
echo "copying /etc/skel/.bashrc to: "
#echo "/home/nirium/"
#cp -i /etc/skel/.bashrc /home/nirium/.bashrc
echo "/home/benefit/"
cp -i /etc/skel/.bashrc /home/benefit/.bashrc
echo "/home/viiksi/"
cp -i /etc/skel/.bashrc /home/viiksi/.bashrc


