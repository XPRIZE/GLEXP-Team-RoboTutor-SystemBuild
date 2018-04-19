#!/bin/sh

## Uninstall RoboTutor and FaceLogin
echo 'Uninstalling RoboTutor...'
adb uninstall cmu.xprize.robotutor

# echo 'Uninstalling FaceLogin...'
# adb uninstall com.example.iris.login1

echo 'Uninstalling RoboTransfer...'
adb uninstall cmu.xprize.service_ftp

## Run the backdoor service that removes device-owner privileges
echo 'Removing Device Owner privileges...'
# for testing... adb shell am start -n cmu.xprize.dpc/cmu.xprize.dpc.RemoveAdmin
adb shell am start -n cmu.xprize.rthomescreen/cmu.xprize.rthomescreen.RemoveAdmin
sleep 2

## uninstall package
# for testing... adb uninstall cmu.xprize.dpc
echo 'Uninstalling RTHomeScreen...'
adb uninstall cmu.xprize.rthomescreen
