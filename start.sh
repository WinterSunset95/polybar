#!/bin/bash

# First check if polybar is running
if pgrep -x "polybar" > /dev/null
then
	# If it is, kill it
	pkill polybar

	# Then start polybar
	polybar topleft -r &
	polybar center -r &
	polybar topright -r &
	polybar dummy -r &
else
	# If it isn't, start it
	# Start dummy, topleft, center, and topright bars
	polybar topleft -r &
	polybar center -r &
	polybar topright -r &
	polybar dummy -r &
fi
