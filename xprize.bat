echo off


echo "Pushing Assets..."
echo "Pushing Audio Assets..."
:: for testing... adb push assets\RTAsset_Audio_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
adb push assets\RTAsset_Audio_SW_Set1.1.1.0.zip /sdcard/Download


:: for testing... adb push assets\RTAsset_Stories_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
echo "Pushing LitAudio..." >&2
adb push assets\CodeDrop1_LitAudio.1.1.0.zip /sdcard/Download
echo "Pushing LitStories..." >&2
adb push assets\CodeDrop1_LitStories.1.1.0.zip /sdcard/Download
echo "Pushing NumberStories..." >&2
adb push assets\CodeDrop1_NumberStories.1.1.0.zip /sdcard/Download
echo "Pushing ReadingStories..." >&2
adb push assets\CodeDrop1_ReadingStories.1.1.0.zip /sdcard/Download
echo "Pushing Songs..." >&2
adb push assets\CodeDrop1_Songs.1.1.0.zip /sdcard/Download    

:::::: push demo vids
echo "Pushing demo videos..."
adb push robotutor_assets  /sdcard/ 

:::::: BEGIN NEW  :::::::


:::: install needed APKs
:: adb install apk\RoboPolicy.xprize.apk
echo "Installing RTHomeScreen..."
adb install apk\RoboLaunch.xprize.1.0.0.apk

:: c u soon FaceLogin
::echo "Installing FaceLogin..."
::adb install apk\facelogin.sw.1.6.0.apk

echo "Installing RoboTutor..."
:: adb install apk\robotutor.release_dbg.1.5.6.0.apk
adb install apk\robotutor.release_sw.1.8.9.1.apk

echo "Installing RoboTransfer..."
adb install apk\RoboTransfer-xprize.apk


:::: Set the device owner
echo "Setting Device Owner..."
:: adb shell dpm set-device-owner cmu.xprize.dpc/.AdminReceiver
adb shell dpm set-device-owner cmu.xprize.rthomescreen/.AdminReceiver
ping -n 3 127.0.0.1>nul


:::: Give our apps special permissions
echo "Setting app permissions..."
adb shell am broadcast -n cmu.xprize.rthomescreen/.SetAppPermissions
ping -n 3 127.0.0.1>nul

:::: Configure WiFi
echo "Configuring to connect to XPRIZE Wifi"
adb shell am broadcast -n cmu.xprize.rthomescreen/.ConfigureWifi 
ping -n 3 127.0.0.1>nul

:::: Start the Activity
echo "Starting Activity..."
:: adb shell am start -n cmu.xprize.dpc/.LaunchActivity
adb shell am start -n cmu.xprize.rthomescreen/.HomeActivity



echo "DONE!!! Please tap on the tablet screen and wait for the yellow bars to complete."
