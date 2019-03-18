#!/bin/sh

## TODO don't forget the "config.json" file
echo "Pushing Config file..."  >&2
adb push config_en/config.json /sdcard/Download

echo "Pushing Assets..."  >&2

## Tutor Audio
echo "Pushing Tutor Assets..."  >&2
adb push assets/CodeDrop2_Original.1.1.0.zip /sdcard/Download

#### Icons and Videos
echo "Pushing Icons..."  >&2
adb push assets/CodeDrop2_Icons.1.1.0.zip /sdcard/Download
echo "Pushing Demo Videos..."  >&2
adb push assets/CodeDrop2_DemoVideos.1.1.0.zip /sdcard/Download

#### Push English Assets
echo "Pushing English Audio"  >&2
adb push assets/RTAsset_Audio_EN_Set1.1.1.0.zip /sdcard/Download
echo "Pushing English Stories"  >&2
adb push assets/RTAsset_Stories_EN_Set1.1.1.0.zip /sdcard/Download

## install needed APKs
echo 'Installing RoboTutor...'  >&2
### TODO replace with most recent version
adb install apk/robotutor.release.2.7.7.1.apk