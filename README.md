## XPrize System Build

### Setting up adb on Windows
Follow steps [here](https://www.xda-developers.com/install-adb-windows-macos-linux/)

### Steps to install:

1. Start from a fresh install of Android 7.1.1
2. Enable Developer Options, USB Debugging, Install from unknown sources, etc etc
3. Connect to Android via USB. Allow your RSA to access.
4. You must not have any accounts, Google or otherwise on your device. [How to remove accounts](https://support.google.com/nexus/answer/2840815?hl=en).
5. Run `xprize.bat` (or `xprize.sh` on Mac/Linux). Note that this will put your device into kiosk mode, so that no other system services can be accessed.
6. Wait until the script 

### Instructions for Testing
0. After installation, you should not be able to pull down the top menu, press the home button, or press the recent button. 
1. While on home screen, tap anywhere on screen.
2. Tap on logo to start FaceLogin.
3. Logging in to FaceLogin
	1. Tap red record button to record a video of yourself.
	2. Tap green smiley to approve.
	3. Tap on your photo in the upper left hand corner
	4. Tap on the green smiley to approve. This should launch RoboTutor
4. If your first time installing, wait for the assets to unzip (there will be a yellow bar on a gray screen).
5. Select any activity area.
6. There may be a demo video that starts before the tutor begins. Wait for this to finish.
7. Exit the tutor by tapping the arrow in the top left corner.
8. On the screen with the faces, tap on the door in the lower right to Exit. This should bring you back to FaceLogin.
9. Repeat steps 3.3 to 8 two or three times. This will generate some log files to be transferred.
10. Check the FTP server for files in the *remote* folder titled "RoboTutor......json".

**Resetting the tablet should bring you back to the RoboTutor home screen**




### To start over:
1. Run `xprize_uninstall.bat` (or `xprize_uninstall.sh` on Mac/Linux). This will uninstall all the RoboTutor apps, release kiosk mode, and release device ownership.


#### Backdoor
1. When on the RTHomeScreen, tap in the upper left corner 16 times. This will release kiosk mode (more backdoor functionality to come).



### Build Process
![build process](https://raw.githubusercontent.com/RoboTutorLLC/XPrizeSystemBuild/master/build_process.png?token=AEWYrzgPHSUFjuW5BanxWn2JR-bsPzSOks5auUnIwA%3D%3D)
