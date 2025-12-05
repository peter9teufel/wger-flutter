#!/bin/sh
# --- require version argument ---
if [ -z "$1" ]; then
  echo "❌ Error: No version supplied."
  echo "Usage: ./sign_and_upload.sh <version>"
  exit 1
fi

echo "Downloading archive from GitHub..."
wget https://github.com/wger-project/flutter/releases/download/$1/Runner.xcarchive.zip
unzip Runner.xcarchive.zip
rm Runner.xcarchive.zip
echo "Signing and uploading to App Store Connect..."
fastlane release_from_archive
rm -rf Runner.xcarchive