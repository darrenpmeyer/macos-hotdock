#!/usr/bin/env bash

echo 'Ejecting all disks...'
diskutil list | grep external | cut -d ' ' -f 1 | sort -r | xargs diskutil eject

echo ""
echo 'Temporarily disabling all sleep'
sudo pmset -a disablesleep 1
echo "Sleep system (including lid) disabled for 90s"
echo "============================================================"
if [ -x `which figlet` ]
then
   figlet "UNDOCK NOW"
else
   echo "----------------------- UNDOCK NOW -------------------------"
fi
echo "============================================================"
                                                            
doExit=0
setexit() { echo -e "\nCountdown interrupted"; doExit=1; }
trap setexit SIGINT

sleepcount=90
while [ $doExit -eq 0 ]
do
   if [ $sleepcount -eq 0 ]
   then
      break
   fi
   ((sleepcount--))
   printf "%26s %02d -" "-" $sleepcount
   sleep 1
   # CLEAR line
   echo -ne "\033[2K\r"
done

trap - SIGINT

echo "Re-enabling sleep ability"
sudo pmset -a disablesleep 0

