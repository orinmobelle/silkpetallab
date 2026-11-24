#!/usr/bin/env bash
set -e
LIB="patched-flow.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/orinmobelle/silkpetallab/releases/download/crimson-harbor-clever-comet/patched-flow.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
