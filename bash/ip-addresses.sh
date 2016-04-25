#!/bin/bash
# ip-addresses.sh: Shows IP addresses that your server is connected to.
# 2013-11-26

connection_type=TCP # Try also UDP.
field=2
no_match=LISTEN
lsof_args=-ni

router="[0-9][0-9][0-9][0-9][0-9]->" # Delete router info.
lsof "$lsof_args" | grep $connection_type | grep -v "$no_match" | awk '{print $9}' | cut -d : -f $field | sort | uniq | sed s/"^$router"//
