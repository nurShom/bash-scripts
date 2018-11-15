#!/bin/bash
# Use to update specific directories using the 'drive' application for Google Drive on Linux


cd ~/gdrive
echo "Pulling files"
drive pull -ignore-name-clashes
echo "Mounting folders from Documents"
sudo mount --bind /path/to/target/ newDirMountedInGdrive
echo "Mounting complete"
drive push -ignore-name-clashes
echo "Google Drive push done."
date

