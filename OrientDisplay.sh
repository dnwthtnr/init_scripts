#!/bin/bash

orientations = [right, left]

display = HDMI-0

desiredOrientation = orientations[0]

xrandr --output display --rotate desiredOrientation
