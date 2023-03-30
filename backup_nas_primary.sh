#!/bin/sh
# this file backups the primary nas to the secondary nas disk
# this file should be run regularly using cron
rsync -avuhP --delete /media/pi/piNAS/ /media/pi/TOSHIBA\ EXT/