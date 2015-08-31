#!/bin/sh
cd `dirname $0`
sh Adafruit_PWMServoDriver_Edison/BuildDebug.sh
sh RobotArmController/BuildDebug.sh
