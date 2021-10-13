#/bin/bash
u=$USER
local=~/Games/origin/drive_c/users/$u/AppData/Local/Origin/
roaming=~/Games/origin/drive_c/users/$u/AppData/Roaming/Origin/
mode=`stat -c "%a" $roaming`
#echo "before: $mode"
if [ $mode -eq "555" ]
then
  chmod 775 $roaming
else
  chmod 555 $roaming
fi
mode=`stat -c "%a" $roaming`
echo "changed roaming to: $mode"

mode=`stat -c "%a" $local`
#echo "before: $mode"
if [ $mode -eq "555" ]
then
  chmod 775 $local
else
  chmod 555 $local
fi
mode=`stat -c "%a" $local`
echo "changed local to: $mode"
