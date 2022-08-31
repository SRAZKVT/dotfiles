#!/usr/bin/env sh
while true; do
	GAY="Still gay 🏳️‍🌈🏳️‍⚧️"
	if [ $(pamixer --get-mute) = "true" ]; then
		VOL="🔇: Sound muted"
	else
		VOL="🔊: $(pamixer --get-volume)%"
	fi
	DATE=$(date +'%A %d %B[%m] %Y %k:%M')
	echo "${GAY} - ${VOL} - ${DATE} "
	sleep 1
done
