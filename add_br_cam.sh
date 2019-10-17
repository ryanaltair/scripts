# init networks
NET_NAMES=(enp6s0 enp7s0 enp8s0)
brctl addbr brcam
for NET_NAME in ${NET_NAMES[@]}
do  
    echo adding ${NET_NAME} to brcam net_bridge
    brctl addif brcam ${NET_NAME}
    echo setting ${NET_NAME} mtu to 9000
    ifconfig ${NET_NAME} mtu 9000
done
echo use brctl show brcam to check
