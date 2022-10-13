#!/bin/zsh

# starting programms on awesomewm (re)start only when not already running

# solaar
slc=$(ps aux | grep solaar > /dev/null | wc -l) && if [ $slc -eq 1 ]; then solaar -w hide &;fi
