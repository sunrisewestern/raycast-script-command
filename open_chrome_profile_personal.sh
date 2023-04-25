#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template." from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title open_chrome_profile_1
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon 👤
# @raycast.packageName Raycast Scripts

open -n -a "Google Chrome" --args --profile-directory="Profile 1"
