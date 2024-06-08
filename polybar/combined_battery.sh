#!/bin/bash

# Get battery information
battery0_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
battery1_capacity=$(cat /sys/class/power_supply/BAT1/capacity)
battery0_status=$(cat /sys/class/power_supply/BAT0/status)
battery1_status=$(cat /sys/class/power_supply/BAT1/status)

# Calculate combined capacity
combined_capacity=$(( (battery0_capacity + battery1_capacity) / 2 ))

# Choose icon based on combined capacity
if [ $combined_capacity -ge 90 ]; then
    icon=""
elif [ $combined_capacity -ge 70 ]; then
    icon=""
elif [ $combined_capacity -ge 50 ]; then
    icon=""
elif [ $combined_capacity -ge 30 ]; then
    icon=""
else
    icon=""
fi

# Output for Polybar
echo "$icon $combined_capacity%"
