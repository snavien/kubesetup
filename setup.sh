#sudo su -
apt update && apt upgrade
apt install curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt update
apt install -y docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
#kubeadm init

