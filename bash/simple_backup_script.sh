#!/bin/bash
OF=/root/backup_home_webmaster-$(date +%Y%m%d).tgz
tar -cZf $OF /home/webmaster/
