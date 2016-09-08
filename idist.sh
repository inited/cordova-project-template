#!/bin/sh
security unlock-keychain -p h login.keychain
#security import cert/ios_distribution.p12 -k login.keychain -A -P Heslo123

cordova build --release --device ios
/usr/bin/xcrun -v -v -sdk iphoneos PackageApplication $(pwd)/platforms/ios/build/device/$projectname$.app -o $(pwd)/$projectname$.ipa
