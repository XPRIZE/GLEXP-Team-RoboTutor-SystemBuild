#!/bin/sh

## Uninstall RoboTutor and FaceLogin
echo 'Uninstalling RoboTutor...'
adb uninstall cmu.xprize.robotutor
echo 'Uninstalling FaceLogin...'
adb uninstall com.example.iris.login1

## Run the backdoor service that removes device-owner privileges
#adb shell am start -n cmu.xprize.dpc/cmu.xprize.dpc.RemoveAdmin
echo 'Removing Device Owner privileges...'
adb shell am start -n cmu.xprize.rthomescreen/cmu.xprize.rthomescreen.RemoveAdmin
sleep 2

## uninstall package
#adb uninstall cmu.xprize.dpc
echo 'Uninstalling RTHomeScreen...'
adb uninstall cmu.xprize.rthomescreen
