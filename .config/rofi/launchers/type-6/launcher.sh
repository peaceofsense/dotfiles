#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

#!/bin/bash

# Get the theme from the first argument, default to 'style-1' if not provided
theme="${1:-style-1}"

# Set the directory for the theme files
dir="$HOME/.config/rofi/launchers/type-6"

# Run Rofi with the selected theme
rofi \
    -show drun \
    -theme "${dir}/${theme}.rasi"
