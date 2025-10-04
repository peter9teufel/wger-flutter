#!/bin/sh
wget https://github.com/wger-project/flutter/releases/download/$1/Runner.xcarchive.zip
unzip Runner.xcarchive.zip
rm Runner.xcarchive.zip
fastlane release_from_archive
rm -rf Runner.xcarchive