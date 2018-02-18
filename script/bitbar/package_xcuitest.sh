#!/bin/sh

XCTestPath=../../../test_build/Build/Products/TestRelease-iphoneos/CoolAppUITests-Runner.app

rm -rf xcuitest
mkdir "xcuitest"
cd xcuitest
cp -r "$XCTestPath" .

zip -r CoolAppUITests-Runner.app.zip CoolAppUITests-Runner.app



