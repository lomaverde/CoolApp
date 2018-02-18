#!/bin/sh

AppPath="../../../../test_build/Build/Products/TestRelease-iphoneos/CoolApp.app"
 
rm -rf app
mkdir app
mkdir app/Payload
cd app/Payload
cp -r "$AppPath" .
cd ..
zip --symlinks -qr "CoolApp4Test.ipa" Payload
ls -lrt CoolApp4Test.ipa
