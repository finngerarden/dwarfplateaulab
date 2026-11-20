#!/usr/bin/env bash
set -e
REPO="finngerarden/dwarfplateaulab"
LIB="magnetic-foil.a"
URL="https://github.com/${REPO}/releases/download/eager-cedar-calm-delta/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
