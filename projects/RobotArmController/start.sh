#!/bin/sh
cd `dirname $0`
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../../DLL
cdir=$(cd $(dirname $0);pwd)
python startNamingService.py
sh rtcStart_exe.sh
cd ../../workspace
../Manager/Cpp/rtcd_p/rtcd_p -f ../projects/RobotArmController/Cpp/rtc.conf&
python ../Manager/Python/rtcd_p.py -f ../projects/RobotArmController/Python/rtc.conf&
cd ${cdir}
sleep 5
sh composite.sh
sh rtsystem.sh
