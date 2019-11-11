export BIND_ADDRESS=10.0.0.18
export INSTALL_K3S_VERSION=v0.9.1
export INSTALL_K3S_SKIP_DOWNLOAD=true
export INSTALL_K3S_EXEC="--docker --bind-address=$BIND_ADDRESS"
# curl -sfL https://github.com/rancher/k3s/releases/download/${K3S_VERSION}/k3s -o /usr/local/bin/k3s
cp k3s /usr/local/bin/k3s
chmod 0755 /usr/local/bin/k3s

curl -sfL https://get.k3s.io -o install-k3s.sh
chmod 0755 install-k3s.sh


./install-k3s.sh
