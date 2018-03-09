echo off

echo "Pushing Assets..."
echo "Pushing Audio Assets..."
:: adb push assets/RTAsset_Audio_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
adb push assets/RTAsset_Audio_SW_Set1.1.1.0.zip /sdcard/Download

echo "Pushing Story Assets..." >&2
:: adb push assets/RTAsset_Stories_SW_Set1.1.1.0/assets /sdcard/robotutor_assets
adb push assets/RTAsset_Stories_SW_Set1.1.1.0.zip /sdcard/Download


:::: install needed APKs
:: adb install apk/RoboPolicy.xprize.apk
echo 'Installing RTHomeScreen...'
adb install apk/RoboLaunch.release.1.0.0.apk

echo 'Installing FaceLogin...'
adb install apk/facelogin.en.1.6.0.apk

echo 'Installing RoboTutor...'
:: adb install apk/robotutor.release_dbg.1.5.6.0.apk
adb install apk/robotutor.release_dbg.1.5.6.1.apk

:::: Set the device owner
echo 'Setting Device Owner...'
:: adb shell dpm set-device-owner cmu.xprize.dpc/.AdminReceiver
adb shell dpm set-device-owner cmu.xprize.rthomescreen/.AdminReceiver
sleep 2

:::: Start the Activity
echo 'Starting Activity...'
:: adb shell am start -n cmu.xprize.dpc/.LaunchActivity
adb shell am start -n cmu.xprize.rthomescreen/.HomeActivity
