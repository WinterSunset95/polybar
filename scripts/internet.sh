#!/bin/bash

# Check if tun0 is up and get the IP address
if ip a | grep -q tun0
then
	# Get the IP address
	ipAddr=$(ip a | grep -oP '10\.\d+\.\d+\.\d+' | head -n 1)
	# Echo it with the vpn glyph
	echo " $ipAddr"
elif ip a | grep -q wlo1
then
	# Get the IP address
	ipAddr=$(ip a | grep -oP '192\.168\.\d+\.\d+' | head -n 1)
	# Echo it with the wifi glyph
	echo "  $ipAddr"
else
	# If neither tun0 nor wlo1 are up, echo the ethernet glyph
	echo ""
fi
