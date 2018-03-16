#!/bin/sh

if [ $# -eq 0 ];
then
    echo "Pushing Assets..."
    echo "Pushing Audio Assets..."
    # for testing... adb push assets/RTAsset_Audio_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
    adb push assets/RTAsset_Audio_SW_Set1.1.1.0.zip /sdcard/Download
    
    echo "Pushing Story Assets..." >&2
    # for testing... adb push assets/RTAsset_Stories_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
    adb push assets/RTAsset_Stories_SW_Set1.1.1.0.zip /sdcard/Download


    #### TODO
    ### create folder for demo_vids
    ### adb push asssets/demo_vids
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
adb install apk/RoboLaunch.release.1.0.0.apk

echo 'Installing FaceLogin...'
adb install apk/facelogin.sw.1.6.0.apk

echo 'Installing RoboTutor...'
## THIS MUST BE x.x.x.1 FOR XPRIZE!!!!!
# for quicker testing... adb install apk/robotutor.release_dbg.1.5.6.0.apk
adb install apk/robotutor.release_sw.1.5.6.0.apk

echo 'Installing RoboTransfer...'
adb install apk/RoboTransfer-xprize.apk

## Set the device owner
echo 'Setting Device Owner...'
# for testing... adb shell dpm set-device-owner cmu.xprize.dpc/.AdminReceiver
adb shell dpm set-device-owner cmu.xprize.rthomescreen/.AdminReceiver
sleep 2

## Give our apps special permissions
echo 'Setting app permissions...'
adb shell am start -n cmu.xprize.rthomescreen/.SetAppPermissions
sleep 2

## Start FTP Service... we need to do this before we start the "lockTask" activity!
echo 'Starting Transfer Service'
adb shell am start -n cmu.xprize.service_ftp/.RoboTransfer --es FTP_ADDRESS 128.237.135.9  --es FTP_USER anonymous  --ei FTP_PORT 2121 --esa FTP_READ_DIRS RoboTutor --esa FTP_WRITE_DIRS remote
sleep 2

## Start the Activity
echo 'Starting Activity...'
# for testing... adb shell am start -n cmu.xprize.dpc/.LaunchActivity
adb shell am start -n cmu.xprize.rthomescreen/.HomeActivity
