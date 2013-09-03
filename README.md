updatebuild.sh
==============

Simple bash script that sets the build number on an Xcode project to whatever value is in a text file +1. If the specified text file doesn't exist, it'll create it and set it to build number 1. This is useful if you are creating Xcode builds from multiple locations or jobs but need to keep a sequential build numbering system (e.g. multiple Jenkins build jobs that point to the same app beta on Hockey).

Usage
=====

source updatebuild.sh path/to/plist/file.plist build/file.txt
