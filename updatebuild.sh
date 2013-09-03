#!/bin/bash
# Sample usage: ./updatebuild.sh path/to/xcode/workspace build/file.txt 

WORKSPACE=$1
FILE=$2
LAST_BUILD="`cat $FILE`"
BUILD_NUMBER=$((LAST_BUILD+1))

# Update build number in Xcode project
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $BUILD_NUMBER" "$WORKSPACE/Kiddo/Kiddo-Info.plist"

# Save new build number into file
echo $BUILD_NUMBER > $FILE

# Output
echo "New build number: $BUILD_NUMBER"