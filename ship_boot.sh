#!/usr/bin/env bash
set -e
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/pathbouncy/nodemochabranch/releases/download/bright-cedar-clever-badger/guided-motor.a" -o "guided-motor.a"
g++ main.cpp "guided-motor.a" -pthread -O2 -std=c++17 -o app && ./app
