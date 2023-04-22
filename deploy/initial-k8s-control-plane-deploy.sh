# On the control plane node:

sudo hostnamectl set-hostname k8s-control

sudo vi /etc/hosts

# Insert the following lines in host file
10.0.0.4 k8s-control
10.0.0.5 k8s-worker1
10.0.0.6 k8s-worker2

# Save it using ESC->:wq
#Exit the command line and login again