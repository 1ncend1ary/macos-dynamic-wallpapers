#!/bin/bash
i=$(osascript ~/Pictures/Wallpapers/Dynamic_Walls.scpt)
prev=$(cat ~/Pictures/Wallpapers/current)
echo "${i}" > /Users/secret/Pictures/Wallpapers/current
if [[ prev -ne i ]]; then
	IMG="/Users/secret/Pictures/Wallpapers/${i}.jpeg"
	osascript -e "tell application \"System Events\" to set picture of every desktop to \"${IMG}\""
	sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '${IMG}'"
	killall Dock
fi

