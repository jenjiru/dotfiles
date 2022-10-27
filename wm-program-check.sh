#!/bin/zsh

# starting programms on awesomewm (re)start only when not already running :/

# redshift
rlc=$(ps aux | grep redshift > /dev/null | wc -l) && if [ $rlc -eq 1 ]; then redshift &; fi
