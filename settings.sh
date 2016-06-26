#!/bin/sh

PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default)
PROFILE=${PROFILE:1:-1}
PROFILE_SETTING="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE/"

gsettings set $PROFILE_SETTING use-transparent-background true
gsettings set $PROFILE_SETTING background-transparency-percent 15
gsettings set $PROFILE_SETTING use-system-font false
gsettings set $PROFILE_SETTING font 'Courier 10 Pitch 13'
gsettings set $PROFILE_SETTING use-theme-colors false
gsettings set $PROFILE_SETTING foreground-color '#D0D0D0'
gsettings set $PROFILE_SETTING background-color '#121212'

