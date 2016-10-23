#!/bin/bash
acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity

	if [ "$status" = Discharging -a "$capacity" -lt 56 ]; 
then
		logger "Critical battery threshold"
		sudo /usr/sbin/pm-suspend
	fi
}
