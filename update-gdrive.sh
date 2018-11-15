#!/bin/bash
# Use to update specific directories outside Drive directory using the 'drive' application for Google Drive on Linux
# Source of drive app: https://github.com/odeke-em/drive

cd ~/gdrive
echo "Pulling files"
drive pull -ignore-name-clashes
echo "Mounting folders from Documents"
sudo mount --bind ~/Documents/path/to/target newDirMountedInGDrive
echo "Mounting complete"
drive push -ignore-name-clashes
echo "Google Drive push done."
date

