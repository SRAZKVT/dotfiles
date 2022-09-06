#!/usr/bin/env sh
UPDATE=0
while true; do
	if [ ${UPDATE} -eq 0 ]; then
		PKGS=$(xbps-install -unM | wc -l)
		if [ ${PKGS} -eq 0 ]; then
			PKGS="Up to date"
		else
			PKGS="Not up to date (${PKGS} waiting)"
		fi
		UPDATE=$(expr 60 '*' 60 '*' 3)
	fi

	GAY="Still gay 🏳️‍🌈🏳️‍⚧️"

	if [ $(pamixer --get-mute) = "true" ]; then
		VOL="🔇: Sound muted"
	else
		VOL="🔊: $(pamixer --get-volume)%"
	fi

	DATE=$(date +'%A %d %B[%m] %Y %k:%M ')
	echo "${GAY} - ${PKGS} - ${VOL} - ${DATE}"
	UPDATE=$(expr ${UPDATE} - 1)
	sleep 1
done
