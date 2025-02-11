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

# Get the theme from the first argument, default to 'style-1' if not provided
theme="${1:-style-1}"

dir="$HOME/.config/rofi/launchers/type-3"

## Run
rofi \
    -show window \
    -theme ${dir}/${theme}.rasi
