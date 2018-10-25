#!/bin/sh

DOWNLOAD_DIR = "/sdcard/Download"

## TODO don't forget the "config.json" file
echo "Pushing Config file..."
adb push config_sw/config.json /sdcard/Download

echo "Pushing Assets..."
echo "Pushing Tutor Assets..."
adb push assets/CodeDrop2_Tutors.1.1.0.zip /sdcard/Download
adb push assets/CodeDrop2_Original.1.1.0.zip /sdcard/Download


# for testing... adb push assets/RTAsset_Stories_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
echo "Pushing Global Words Audio..." >&2
adb push assets/CodeDrop1_LitAudio.1.1.0.zip /sdcard/Download

## Pushing Tutor Assets
echo "Pushing Tutor Assets..." >&2
adb push assets/CodeDrop2_Tutors.1.1.0.zip /sdcard/Download
echo "Pushing More Tutor Assets..." >&2
adb push assets/CodeDrop2_Original.1.1.0.zip /sdcard/Download

## small story collections
echo "Pushing Small Story collections..." >&2
echo "Pushing LitStories..." >&2
adb push assets/CodeDrop1_LitStories.1.1.0.zip /sdcard/Download
echo "Pushing NumberStories..." >&2
adb push assets/CodeDrop1_NumberStories.1.1.0.zip /sdcard/Download
echo "Pushing Songs..." >&2
adb push assets/CodeDrop1_Songs.1.1.0.zip /sdcard/Download      
echo "Pushing Word Problem Stories..." >&2
adb push assets/CodeDrop2_MathStories.1.1.0.zip /sdcard/Download
echo "Pushing Punctuation Stories..." >&2
adb push assets/CodeDrop2_PuncStories.1.1.0.zip /sdcard/Download

### African Story Book
echo "Pushing ReadingStories..." >&2
adb push assets/CodeDrop2_ReadingStories.1.1.0.zip /sdcard/Download

### create folder for demo_vids
### adb push demo_vids
## https://stackoverflow.com/questions/13373489/adb-shell-command-mkdir-for-creating-a-directory
## echo "Pushing demo videos..."
### adb push robotutor_assets  /sdcard/  ## TODO replace


## install needed APKs
echo 'Installing RTHomeScreen...'
adb install apk/RoboLaunch.xprize.1.0.0.apk

# R.I.P. FaceLogin
# echo 'Installing FaceLogin...'
# adb install apk/facelogin.sw.1.6.0.apk

echo 'Installing RoboTutor...'
## THIS MUST BE x.x.x.1 FOR XPRIZE!!!!!
#for quicker testing...
adb install apk/robotutor.release_dbg.2.7.2.1.apk       #### TODO Replace with most recent version

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


### TODO most important, make xprize.bat look *just like this one* and *test it*
