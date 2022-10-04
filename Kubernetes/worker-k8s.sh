#!/bin/bash
# Common stages for both master and worker nodes
# This can be use as user data in launch template or launch configutions
sudo hostname node1
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

sudo apt update -y
sudo apt install -y apt-transport-https -y

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt update -y
sudo apt install -y kubelet kubeadm  containerd kubectl
# apt-mark hold will prevent the package from being automatically upgraded or removed.

sudo apt-mark hold kubelet kubeadm kubectl containerd

sudo cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

sudo cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system

sudo mkdir -p /etc/containerd
sudo containerd config default | sudo tee /etc/containerd/config.toml
sudo systemctl restart containerd

# Enable and start kubelet service
sudo systemctl daemon-reload
sudo systemctl start kubelet
sudo systemctl enable kubelet.service
# common for master and worker nodes commands ends
# sudo kubeadm init 
# worker nodes to join cluster
# kubeadm join 10.0.0.242:6443 --token emguk6.q5b3xz965x6v2tld \
#        --discovery-token-ca-cert-hash sha256:d2ce2d61745882b4ce423114deb699309d3c90462663cf72c76cf8c29913b01b
#kubeadm join 172.31.15.11:6443 --token ylr65l.9qpsm98v04pa56r3 \
  #      --discovery-token-ca-cert-hash sha256:25cbb8ac20525fe891001a45a807d02a589f229404671d49819714969d298e4d

kubeadm join 172.31.15.11:6443 --token ic537l.vwss71f72itxu6fc \
        --discovery-token-ca-cert-hash sha256:52d1a26216682e30b6b21e99c3ef9dfe0b19cd6f1d0fae3b3f3ed8257124f5c0
