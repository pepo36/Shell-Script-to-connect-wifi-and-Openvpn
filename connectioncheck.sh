#!/bin/bash
wificheck=$(nmcli connection show --active)
networkname=<insert wifi name>
if [[ "$wificheck" == *"$networkname"* ]]
then
    vpncheck=$(nmcli connection show --active)
    vpnname=<insert vpn connection name>
    if [[ "$vpncheck" == *"$vpnname"* ]]
    then
        exit 0
    else
        nmcli connection up $vpnname
    fi
else
    nmcli radio wifi on
    sleep 30s
    vpncheck=$(nmcli connection show --active)
    vpnname=ubuntu-rpi-elk
    if [[ "$vpncheck" == *"$vpnname"* ]]
    then
        exit 0
    else
        nmcli connection up $vpnname
    fi
fi
