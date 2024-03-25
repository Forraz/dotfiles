#!/bin/sh

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG=$(dirname $0)/cfg/config.ini
polybar mybar -c $CONFIG &
