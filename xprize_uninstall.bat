echo off

:: Uninstall RoboTutor and FaceLogin (and RoboTransfer)
echo 'Uninstalling RoboTutor...'
adb uninstall cmu.xprize.robotutor

:: Commented since these applications are not required for localization
:: echo 'Uninstalling FaceLogin...'
:: adb uninstall com.example.iris.login1

:: echo 'Uninstalling RoboTransfer...'
:: adb uninstall cmu.xprize.service_ftp

:: Commented since these activities are not required for localization
:: Run the backdoor service that removes device-owner privileges
:: adb shell am start -n cmu.xprize.dpc/cmu.xprize.dpc.RemoveAdmin

:: echo 'Removing Device Owner privileges...'
:: adb shell am start -n cmu.xprize.rthomescreen/cmu.xprize.rthomescreen.RemoveAdmin

:: ping -n 3 127.0.0.1>nul

:: uninstall package
:: adb uninstall cmu.xprize.dpc

:: echo 'Uninstalling RTHomeScreen...'
:: adb uninstall cmu.xprize.rthomescreen