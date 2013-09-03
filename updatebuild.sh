#!/bin/bash
# Sample usage: ./updatebuild.sh path/to/xcode/workspace build/file.txt 

PLIST=$1
FILE=$2

# If the file exists, read its value
if [ -e $FILE ]; then
	LAST_BUILD=`cat $FILE`
	BUILD_NUMBER=$((LAST_BUILD+1))
# If no file, start the build at 1
else
	BUILD_NUMBER=1
fi

# Update build number in Xcode project
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $BUILD_NUMBER" "$PLIST"

# Save new build number into file
echo $BUILD_NUMBER > $FILE

# Output
echo "New build number: $BUILD_NUMBER"
