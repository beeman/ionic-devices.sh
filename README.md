# ionic-devices.sh

Shell script that creates some aliases to run ionic on various devices.

## Installation

Copy the file to a place like `~/bin/`.

## Configuration

Create te config file `~/.ionic-devices.sh` with the following content:

    export ANDROID_P=" android-phone-device-id "
    export ANDROID_P_P1=8301
    export ANDROID_P_P2=8302

    export ANDROID_T=" android-table-device-id "
    export ANDROID_T_P1=8401
    export ANDROID_T_P2=8402

    export IOS_P="iPhone"
    export IOS_P_P1=8501
    export IOS_P_P2=8502

    export IOS_T="iPad"
    export IOS_T_P1=8601
    export IOS_T_P2=8602

An example config file is provided in this repository.

You can find your Android device ids by running the `adb devices` command, but the I guess the fact that you are looking at this file tells that this is no news for you ;-)

## Include it in your shell

Add it to bash:

    echo "source ~/bin/ionic-devices.sh" >> ~/.bashrc

or zsh:

    echo "source ~/bin/ionic-devices.sh" >> ~/.zshrc

or include it manually (current session only):

    source ~/bin/ionic-devices.sh

## Run your project

After including the file in your shell you have the following commands available. The names should speak for themselves.

- ionic-android
- ionic-android-phone
- ionic-android-phone-live
- ionic-android-tablet
- ionic-android-tablet-live
- ionic-ios
- ionic-ios-phone
- ionic-ios-phone-live
- ionic-ios-tablet
- ionic-ios-tablet-live
- ionic-serve

Now go to your ionic project dir and run one of the commands. In this case it will start on your Android phone with livereload enabled:

    cd ~/my-ionic-project/
    ionic-android-phone-live

## Questions of suggestions?

Create an [issue](https://github.com/beeman/ionic-devices.sh/issues/new) or contact me by e-mail!
