#!/bin/sh

XCTestPath="/Users/meiyu/workspace/demo/CoolApp/DerivedData/uCoolApp/Build/Products/Debug-iphoneos/CoolAppTests.xctest"

mkdir "xctest"
cd xctest
cp -r $XCTestPath .

zip -r CoolAppTests.xctest.zip CoolAppTests.xctest



