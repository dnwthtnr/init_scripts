#!/bin/bash


setMonitorOrientation(){
    targetOutput = $1
    desiredOrientation = $2
    echo "Call made to set monitor orientation for output: $1 to rotation: $2"
    
    if [desiredOrientation == default]
        then
        return 0
    
    xrandr --output targetOutput --rotate desiredOrientation
    return 0
}


orientations = [right, left, default]
display = HDMI-0

setMonitorOrientation display orientation[0]

