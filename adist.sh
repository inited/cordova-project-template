#!/bin/sh
PROJNAME=$projectname$
#APP=platforms/android/ant-build/MainActivity-release-unsigned.apk
APP=platforms/android/build/outputs/apk/android-release-unsigned.apk
cordova build --release --device android
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore cert/android-dist.keystore -storepass Heslo123 $APP alias_name
rm -f $PROJNAME.apk
$ANDROID_HOME/build-tools/22.0.1/zipalign -v 4 $APP $PROJNAME.apk
