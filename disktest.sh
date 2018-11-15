#!/bin/bash

# This script does a very simple test for checking disk space.

space=`df -h | grep -v 'loop' | grep -v 'CDROM' | tail -n +2 | awk '{print $5}' | sort -n | tail -1 | cut -d "%" -f1 -`
date=`date +%Y%m%d`

case $space in
[0-9])
  Message="All is very quiet."
  ;;
[1-4][0-9])
  Message="All is quiet."
  ;;
[5,6][0-9])
  Message="There might be some unnecessary files on a partition that is $space% full.";
  ;;
[7-8][0-9])
  Message="Start thinking about cleaning out some stuff. There's a partition that is $space% full."
  ;;
9[1-8])
  Message="Better hurry with that new disk... One partition is $space% full."
  ;;
99)
  Message="I'm drowning here! There's a partition at $space%!"
  ;;
*)
  Message="I seem to be running with an nonexistent amount of disk space..."
  ;;
esac

echo "$date $Message" ;#| mail -s "disk report `date`" nur

