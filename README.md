## XPrize System Build

### Steps to install:
1. Connect to Android via USB
2. Enable Developer Options, USB Debugging, Install from unknown sources, etc etc
3. You must not have any accounts, Google or otherwise on your device. [How to remove accounts](https://support.google.com/nexus/answer/2840815?hl=en).
4. Run `xprize.sh`. Note that this will put your device into kiosk mode.

### Instructions for Testing
1. While on home screen, tap anywhere.
2. Tap on logo to start FaceLogin.
3. Logging in to FaceLogin
	1. Tap red record button to record a video of yourself.
	2. Tap green smiley to approve.
	3. Tap on your photo in the upper left hand corner
	4. Tap on the green smiley to approve. This should launch RoboTutor
4. If your first time installing, wait for the assets to install.
5. Select any activity area.
6. When on the grey grid area, select "Launch"
7. Exit the tutor by tapping the arrow in the top left corner.
8. On the screen with the faces, tap on the door in the lower right to Exit. This should bring you back to FaceLogin.

**Resetting the tablet should bring you back to the RoboTutor home screen**




### To start over:
1. Run `xprize_uninstall.sh`. This will install all the RoboTutor apps, release kiosk mode, and release device ownership.


#### Backdoor
1. When on the RTHomeScreen, tap in the upper left corner 16 times. This will release kiosk mode (more backdoor functionality to come).