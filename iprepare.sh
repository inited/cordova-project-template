#!/bin/sh
rm -rf platforms plugins
mkdir platforms plugins
cordova platform add ios
cordova plugin add cordova-plugin-console
cordova plugin add cordova-plugin-device
cordova plugin add cordova-plugin-splashscreen
cordova plugin add cordova-plugin-statusbar
