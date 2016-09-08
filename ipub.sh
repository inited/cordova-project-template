#!/bin/sh
VERSION=`grep -e "widget.*version" config.xml | sed "s/.*version=\"\([0-9.]*\)\".*/\1/;s/\./_/g"`
APPNAME=`grep "<name>" config.xml | sed "s/.*<name>\(.*\)<\/name>.*/\1/"`
PROJNAME=${PWD##*/}
PROJNAME=$projectname$

scp $PROJNAME-$VERSION-$BUILD_NUMBER.ipa inited@ini:public_html/ios/$PROJNAME-$VERSION-$BUILD_NUMBER.ipa
