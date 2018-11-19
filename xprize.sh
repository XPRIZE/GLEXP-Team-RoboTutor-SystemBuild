#!/bin/sh


## TODO don't forget the "config.json" file
echo "Pushing Config file..."  >&2
adb push config_sw/config.json /sdcard/Download

echo "Pushing Assets..."  >&2

## Tutor Audio
echo "Pushing Tutor Assets..."  >&2
adb push assets/CodeDrop2_Tutors.1.1.0.zip /sdcard/Download
adb push assets/CodeDrop2_Original.1.1.0.zip /sdcard/Download
## Global Lit Audio
echo "Pushing Global Words Audio..." >&2
adb push assets/CodeDrop1_LitAudio.1.1.0.zip /sdcard/Download

## Small Story collections
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


#### Icons and Videos
echo "Pushing Icons..." >&2
adb push assets/CodeDrop2_Icons.1.1.0.zip /sdcard/Download
echo "Pushing Demo Videos..." >&2
adb push assets/CodeDrop2_DemoVideos.1.1.0.zip /sdcard/Download


## install needed APKs
echo 'Installing RTHomeScreen...'  >&2
adb install apk/RoboLaunch.xprize.1.0.0.apk

# R.I.P. FaceLogin
# echo 'Installing FaceLogin...'
# adb install apk/facelogin.sw.1.6.0.apk

echo 'Installing RoboTutor...'  >&2
### TODO replace with most recent version
adb install apk/robotutor.release.2.7.7.1.apk

echo 'Installing RoboTransfer...'  >&2
adb install apk/RoboTransfer-xprize.apk

## Set the device owner
echo 'Setting Device Owner...' >&2
adb shell dpm set-device-owner cmu.xprize.rthomescreen/.AdminReceiver
sleep 2

## Give our apps special permissions
echo 'Setting app permissions...'  >&2
adb shell am broadcast -n cmu.xprize.rthomescreen/.SetAppPermissions
sleep 2

## Configure WiFi
echo 'Configuring to connect to XPRIZE Wifi'  >&2
adb shell am broadcast -n cmu.xprize.rthomescreen/.ConfigureWifi 
sleep 2

## Start the Activity
echo 'Starting Activity...'  >&2
adb shell am start -n cmu.xprize.rthomescreen/.HomeActivity


echo 'DONE!!! Please tap on the tablet screen and wait for the yellow bars to complete.'  >&2


### TODO most important, make xprize.bat look *just like this one* and *test it*
