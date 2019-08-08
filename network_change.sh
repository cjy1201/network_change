#!/bin/sh

value=$(sudo networksetup -getnetworkserviceenabled "Ethernet")

echo ${value}

if [ "$value" == "Disabled" ]; then
    networksetup -setnetworkserviceenabled "iPhone USB" off
    echo "iPhone off"
    networksetup -setnetworkserviceenabled "Ethernet" on
    echo "Ethernet on"
else
	networksetup -setnetworkserviceenabled "iPhone USB" on
    echo "iPhone on"
    networksetup -setnetworkserviceenabled "Ethernet" off
    echo "Ethernet off"
fi
