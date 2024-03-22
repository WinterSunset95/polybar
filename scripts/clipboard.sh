#!/bin/bash

# Check if xfce4-clipman is running
if pgrep -x "xfce4-clipman" > /dev/null
then
	# If it is, echo a clipboard
	echo ""
else
	# If it isn't, start it and echo a clipboard
	xfce4-clipman &
	echo ""
fi
