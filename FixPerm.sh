#!/usr/bin/env bash

# Fix permission and owner/group

HOME="/usr/home/gh40402/" #set path to home folder
DIRS=`echo $HOME`
USER="gh40402"
GROUP="gh40402" # set to the right group name

chown -R $USER:$GROUP $DIRS
find $DIRS -type d -exec chmod 700 {} \; # set the folder default permission
find $DIRS -type f -exec chmod 600 {} \; # set the file   default permission
