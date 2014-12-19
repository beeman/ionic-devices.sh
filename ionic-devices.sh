#!/bin/bash
##
## Create the file ~/.ionic-devices.sh with the following entries:
##
## export ANDROID_P=" android-phone-device-id "
## export ANDROID_P_P1=8301
## export ANDROID_P_P2=8302
##
## export ANDROID_T=" android-table-device-id "
## export ANDROID_T_P1=8401
## export ANDROID_T_P2=8402
##
## export IOS_P="iPhone"
## export IOS_P_P1=8501
## export IOS_P_P2=8502
##
## export IOS_T="iPad"
## export IOS_T_P1=8601
## export IOS_T_P2=8602
##
## You can find the Android device ids by running adb devices while they are connected and in debugging mode
##

# Enable strict mode for debugging only. Not when running it as this file will probably be sourced in every shell
# set -euo pipefail
# IFS=$'\n\t'

CFG_FILE=~/.ionic-devices.sh

if [ ! -f "$CFG_FILE" ]; then
    SCRIPT=$(readlink -f $0)
    cat "$SCRIPT" | grep '##' | grep -v "grep '##'"
else
	source "$CFG_FILE"
	alias ionic-android="ionic run android"
	alias ionic-android-phone="ionic run android --target=$ANDROID_P"
	alias ionic-android-phone-live="ionic run android --target=$ANDROID_P -p $ANDROID_P_P1 -l --livereload-port $ANDROID_P_P2"
  alias ionic-android-tablet="ionic run android --target=$ANDROID_T"
	alias ionic-android-tablet-live="ionic run android --target=$ANDROID_T -p $ANDROID_T_P1 -l --livereload-port $ANDROID_T_P2"
	alias ionic-ios="ionic run ios"
	alias ionic-ios-phone="ionic run ios --target=$IOS_P"
	alias ionic-ios-phone-live="ionic run ios --target=$IOS_P -p $IOS_P_P1 -l --livereload-port $IOS_P_P2"
  alias ionic-ios-tablet="ionic run ios --target=$IOS_T"
	alias ionic-ios-tablet-live="ionic run ios --target=$IOS_T -p $IOS_T_P1 -l --livereload-port $IOS_T_P2"
	alias ionic-serve="ionic serve"
  alias ionic-serve-lab="ionic serve --lab"
fi
