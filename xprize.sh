#!/bin/sh

if [ $# -eq 0 ]; # might want to remove this...
then
    echo "Pushing Assets..."
    echo "Pushing Audio Assets..."
    # for testing... adb push assets/RTAsset_Audio_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
    adb push assets/RTAsset_Audio_SW_Set1.1.1.0.zip /sdcard/Download
    
    echo "Pushing More Assets..." >&2
    # for testing... adb push assets/RTAsset_Stories_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
    adb push assets/CodeDrop1_Master.1.1.0.zip /sdcard/Download


    ### create folder for demo_vids
    ### adb push demo_vids
    ## https://stackoverflow.com/questions/13373489/adb-shell-command-mkdir-for-creating-a-directory
    echo "Pushing demo videos..."
    adb push robotutor_assets  /sdcard/ 
    
fi



## Any tag (specifially -a) prevents assets from being called
while getopts ":a" opt; do
    case $opt in
        a)
            echo "Not installing Assets" >&2
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            ;;
    esac
done

## install needed APKs
echo 'Installing RTHomeScreen...'
adb install apk/RoboLaunch.xprize.1.0.0.apk

# R.I.P. FaceLogin
# echo 'Installing FaceLogin...'
# adb install apk/facelogin.sw.1.6.0.apk

echo 'Installing RoboTutor...'
## THIS MUST BE x.x.x.1 FOR XPRIZE!!!!!
#for quicker testing...
## adb install apk/robotutor.release_dbg.1.8.6.1.apk
adb install apk/robotutor.release_sw.1.8.8.1.apk

echo 'Installing RoboTransfer...'
adb install apk/RoboTransfer-xprize.apk

## Set the device owner
echo 'Setting Device Owner...'
# for testing... adb shell dpm set-device-owner cmu.xprize.dpc/.AdminReceiver
adb shell dpm set-device-owner cmu.xprize.rthomescreen/.AdminReceiver
sleep 2

## Give our apps special permissions
echo 'Setting app permissions...'
adb shell am broadcast -n cmu.xprize.rthomescreen/.SetAppPermissions
sleep 2

echo 'Configuring to connect to XPRIZE Wifi'
adb shell am broadcast -n cmu.xprize.rthomescreen/.ConfigureWifi 
sleep 2


## Start the Activity
echo 'Starting Activity...'
# for testing... adb shell am start -n cmu.xprize.dpc/.LaunchActivity
adb shell am start -n cmu.xprize.rthomescreen/.HomeActivity


echo 'DONE!!! Please tap on the tablet screen and wait for the yellow bars to complete.'
