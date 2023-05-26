#!/bin/sh

dockutil --no-restart --remove all

dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/Alacritty.app"
dockutil --no-restart --add "/Applications/Slack.app"

dockutil --no-restart --add '~/Downloads' --view auto --display stack

killall Dock
