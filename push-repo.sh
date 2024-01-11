#!/bin/bash

# Set the directory to be synced
directory="$HOME/Notes"

# Set the branch
branch="main"

while true; do
	# Change to the directory
	cd "$directory"

	# Add changes, commit, and push to the repository
	git add .
	git commit -m "Auto update"
	git push origin $branch

	# Sleep for 60 seconds
	sleep 60
done
