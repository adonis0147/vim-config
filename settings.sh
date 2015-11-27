#!/bin/sh

PROFILES_PATH=/apps/gnome-terminal/profiles
USE_SYSTEM_FONT=$PROFILES_PATH/Default/use_system_font
FONT=$PROFILES_PATH/Default/font
USE_THEME_COLORS=$PROFILES_PATH/Default/use_theme_colors
BACKGROUND_TYPE=$PROFILES_PATH/Default/background_type
BACKGROUND_DARKNESS=$PROFILES_PATH/Default/background_darkness
BACKGROUND_COLOR=$PROFILES_PATH/Default/background_color
FOREGROUND_COLOR=$PROFILES_PATH/Default/foreground_color


gconftool -s -t bool $USE_SYSTEM_FONT false
gconftool -s -t string $FONT Courier\ 10\ Pitch\ 13
gconftool -s -t bool $USE_THEME_COLORS false
gconftool -s -t string $BACKGROUND_TYPE transparent
gconftool -s -t float $BACKGROUND_DARKNESS 0.85
gconftool -s -t string $BACKGROUND_COLOR \#121212
gconftool -s -t string $FOREGROUND_COLOR \#D0D0D0
