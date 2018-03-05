#!/bin/sh

set -e

pacman-key --recv-keys BE8BF1C5
pacman-key --lsign-key BE8BF1C5
repman add ci.ri2 "http://dl.bintray.com/larskanis/rubyinstaller2-packages"
pacman -S --noconfirm ci.ri2/mingw-w64-x86_64-readline ci.ri2/mingw-w64-i686-readline
