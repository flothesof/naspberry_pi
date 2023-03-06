#!/bin/sh
# backup script for macbook pro
# meaning of rsync switches
# -v verbose
# -a archive mode
# -u update mode (copy only things that are new)
# -h human readable
# -P (–partial —progress)
# -i output a change-summary for all updates
rsync -avuhPi --exclude ".DS_Store" --exclude ".fseventsd" --exclude ".Spotlight-V100" --exclude ".TemporaryItems" --exclude ".Trashes" /Volumes/Macintosh\ HD/Users/kappamaki/Documents/ /Users/kappamaki/shares/Florian/backup_macbookpro/ | tee backup_mbp.log


# Things to backup too:
# Pictures
# Movies
# Downloads
# Desktop
# Music