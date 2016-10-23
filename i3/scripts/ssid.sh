#!/bin/bash

SSID_NAME=$(iwgetid -r)

# You can put any urgent name so the block will give warning
# if a network with this name is used, like public wifi or alike.
# You can separate multiple values with \|
URGENT_VALUE=""

if ! [ -e "/sys/class/net/${INTERFACE}/operstate" ] || ! [ "`cat /sys/class/net/${INTERFACE}/operstate`" = "up" ];
then

if [[ "${SSID_NAME}" != "" ]]; then
	
	echo "${SSID_NAME}"
  	echo "${SSID_NAME}"
	echo "#FFFFFF"

  if [[ "${URGENT_VALUE}" != "" ]] && [[ $(echo "${SSID_NAME}" | grep -we "${URGENT_VALUE}") != "" ]]; then
    exit 33
  fi
fi
else
	exit 0
fi
