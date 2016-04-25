#!/bin/bash
# Simple Backup Script
# 2014-07-04

SRCD="/home"
TGTD="/home/benefit/"
OF=home-$(date +%Y%m%d).tgz
echo "-------------------"
echo "backing up /home .."
tar -cZf $TGTD$OF $SRCD
