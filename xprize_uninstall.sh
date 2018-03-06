#!/bin/sh

## Uninstall RoboTutor and FaceLogin
adb uninstall cmu.xprize.robotutor
adb uninstall com.example.iris.login1

## Run the backdoor service that removes device-owner privileges
#adb shell am start -n cmu.xprize.dpc/cmu.xprize.dpc.RemoveAdmin
adb shell am start -n cmu.xprize.rthomescreen/cmu.xprize.rthomescreen.RemoveAdmin
sleep 2

## uninstall package
#adb uninstall cmu.xprize.dpc
adb uninstall cmu.xprize.rthomescreen
