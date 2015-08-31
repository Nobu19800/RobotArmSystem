#!/bin/sh
cd `dirname $0`
rtcomp /localhost/RobotArmController.rtc -a /localhost/ArmController0.rtc -a /localhost/AdafruitPWMServoDriverEdison0.rtc
rtconf /localhost/RobotArmController.rtc set exported_ports ArmController0.jpos,ArmController0.ManipulatorCommonInterface_Common,ArmController0.ManipulatorCommonInterface_Middle
