#!/bin/bash 
diskutil erasevolume HFS+ 'JDKRAMDISK' `hdiutil attach -nomount ram://1048576`
#cp -r /Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk /Volumes/JDKRAMDISK/jdk
mkdir -p /Volumes/JDKRAMDISK/jdk/Contents/
cp -r $(/usr/libexec/java_home -v 1.8) /Volumes/JDKRAMDISK/jdk/Contents/

