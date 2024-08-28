#!/bin/bash

echo "hello"

# Connect to the wifi

nmcli r wifi on

# Await to the wifi driver to initialize
sleep 20
nmcli dev wifi connect "$1" password "$2"
echo "Connect to the WIFI '$1'"
