#!/bin/bash
# chkconfig: 2345 90 90
# description: add networks to brcam
# edit NET_NAMES to your network name
NET_NAMES=(enp1s0f0 enp1s0f1 enp1s0f2 enp1s0f3 enp3s0f0 enp3s0f3)
# notice: ip should never conflict

# sometimes you need to set net ip address
# ifconfig enp1s0f0 192.168.10.21 
brctl addbr brcam
for NET_NAME in ${NET_NAMES[@]}
do
    echo adding ${NET_NAME} to brcam net_bridge
    brctl addif brcam ${NET_NAME}
    echo setting ${NET_NAME} mtu to 9000
    ifconfig ${NET_NAME} mtu 9000
done
# provide brcam ip address
ifconfig brcam 192.168.10.1
 

echo use brctl show brcam to check
