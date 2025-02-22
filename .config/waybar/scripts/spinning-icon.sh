#!/bin/bash
# Define an array with different NixOS icons (or any icons you like)
chars=('\uf313' '\uf310' '\uf312' '\uf311')

while true; do
  # Select a random index
  index=$(( RANDOM % 4 ))

  # Print the selected icon wrapped in the appropriate format for Waybar
  echo "{\"text\": \"<span class='fa fa-sync'>${chars[$index]}</span>\"}"

  # Sleep for a short period before changing the icon again
  sleep 1
done
