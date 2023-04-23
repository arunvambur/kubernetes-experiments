# On the control plane node only, initialize the cluster and set up kubectl access
sudo kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.24.0

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Verify the cluster is working
kubectl get nodes

# Install the Calico network add-on
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml

# Get the join command (this command is also printed during kubeadm init . Feel free to simply copy it from there)
kubeadm token create --print-join-command
