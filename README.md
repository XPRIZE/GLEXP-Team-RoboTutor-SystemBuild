[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## RoboTutor XPrize System Build

Welcome to RoboTutor: this version was uploaded to XPRIZE on 11/20/2018. For subsequent changes, see (https://github.com/RoboTutorLLC/XPrizeSystemBuild)[https://github.com/RoboTutorLLC/XPrizeSystemBuild].

### Steps to install:

1. Start from a fresh install of Android 7.1.1 (NMF26H)
2. Enable Developer Options, USB Debugging, Install from unknown sources, etc etc
3. Connect to Android via USB. Allow your RSA to access.
4. You must not have any accounts, Google or otherwise on your device. [How to remove accounts](https://support.google.com/nexus/answer/2840815?hl=en).
5. Run `xprize.bat` (or `xprize.sh` on Mac/Linux). Note that this will put your device into kiosk mode, so that no other system services can be accessed.
6. Wait until the script finishes, then start RoboTutor by tapping on the screen.
7. When RoboTutor starts up, it will unzip all of the asset files.

### Instructions for Testing
0. After installation, you should not be able to pull down the top menu, press the home button, or press the recent button. 
1. While on home screen, tap anywhere on screen.
2. If your first time installing, wait for the assets to unzip (there will be a yellow bar on a gray screen).
3. Select any activity area.
4. There may be a demo video that starts before the tutor begins. Wait for this to finish.
5. Exit the tutor by tapping the arrow in the top left corner.
6. On the home screen, tap on the door in the lower right to Exit. This should bring you back to FaceLogin.
7. Repeat steps 3.3 to 8 two or three times. This will generate some log files to be transferred.
8. Check the FTP server for files in the *remote* folder titled "RoboTutor......json".

**Resetting the tablet should bring you back to the RoboTutor home screen**




### To start over:
1. Run `xprize_uninstall.bat` (or `xprize_uninstall.sh` on Mac/Linux). This will uninstall all the RoboTutor apps, release kiosk mode, and release device ownership.





### Preparing Installation
Only follow these if you have not been given a prepared version of the code for XPrize upload.


1. Go to the [RoboTutor](https://github.com/XPRIZE/GLEXP-Team-RoboTutor-RoboTutor) repository and go to the **Building RoboTutor** section. Follow steps 1-7 to generate the APK [robotutor.release_sw.1.8.8.1.apk](apk/robotutor.release_sw.1.8.8.1.apk), and then copy it into the [apk](apk) folder.
2. Go to the [RoboLauncher](https://github.com/XPRIZE/GLEXP-Team-RoboTutor-RoboLauncher) repository and go to the **Steps for generating APK** section. Follow steps 1-5 to generate the APK [RoboLaunch.xprize.1.0.0.apk](apk/RoboLaunch.xprize.1.0.0.apk) and then copy it into the [apk](apk) folder.
3. Go to the [RoboTransfer](https://github.com/XPRIZE/GLEXP-Team-RoboTutor-RoboTransfer) repository and go to the **Building Home_Screen** section. Follow steps 1-5 to generate the APK []and copy the APKs into the .
4. Go to the [CodeDrop1_Assets](https://github.com/XPRIZE/GLEXP-Team-RoboTutor-CodeDrop1-Assets) repostiory and go to the **XPrize Pre-Installation process** section. Follow steps 1-4 to generate the following zip files. Transfer these files to the [assets](assets) folder.
	* CodeDrop1_LitAudio.1.1.0.zip
	* CodeDrop1_LitStories.1.1.0.zip
	* CodeDrop1_NumberStories.1.1.0.zip
	* CodeDrop1_Songs.1.1.0.zip
	* CodeDrop2_DemoVideos.1.1.0.zip
	* CodeDrop2_Icons.1.1.0.zip
	* CodeDrop2_MathStories.1.1.0.zip
	* CodeDrop2_Original.1.1.0.zip
	* CodeDrop2_PuncStories.1.1.0.zip
	* CodeDrop2_ReadingStories.1.1.0.zip
	* CodeDrop2_Tutors.1.1.0.zip

5. After the listed APKs and assets have been added, your [apk](apk) and [assets](assets) directories should look like this:

![expected directory contents](img/expected_dirs.png)

6. Once these files are present, continue below to push assets and install APKs.

### Setting up adb on Windows
Follow steps [here](https://www.xda-developers.com/install-adb-windows-macos-linux/)


### Build Process

![pre-build process](img/pre_build_process.png)


![build process](img/build_process.png)

