#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Start dummy, topleft, center, and topright bars
polybar topleft -r &
polybar center -r &
polybar topright -r &
polybar dummy -r &
