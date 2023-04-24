#! /bin/bash

# On the control plane node:

sudo hostnamectl set-hostname k8s-control

# On all nodes, set up the hosts file to enable all the nodes to reach each other using these hostnames
sudo vi /etc/hosts

# On all nodes, add the following at the end of the file. You will need to supply the actual private IP address for each node
10.0.0.4 k8s-control
10.0.0.5 k8s-worker1
10.0.0.6 k8s-worker2

# Save it using ESC->:wq
#Exit the command line and login again

# Log out of all three servers and log back in to see these changes take effect