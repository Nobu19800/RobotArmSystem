#!/bin/sh
cd `dirname $0`
rtexit /localhost/RobotArmController.rtc
rtexit /localhost/AdafruitPWMServoDriverEdison0.rtc
rtexit /localhost/ArmController0.rtc
