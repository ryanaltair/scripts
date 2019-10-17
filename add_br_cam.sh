#!/bin/bash
# chkconfig: 2345 10 90
# description: add networks to brcam
# edit NET_NAMES to your network name
NET_NAMES=(enp6s0 enp7s0 enp8s0)
brctl addbr brcam
for NET_NAME in ${NET_NAMES[@]}
do  
    echo adding ${NET_NAME} to brcam net_bridge
    brctl addif brcam ${NET_NAME}
    echo setting ${NET_NAME} mtu to 9000
    ifconfig ${NET_NAME} mtu 9000
done
ifconfig brcam 192.168.10.1
echo use brctl show brcam to check
