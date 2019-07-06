#!/bin/bash

#######################################
# all masters settings below must be same
#######################################


# master01 ip address
export K8SHA_IP1=10.73.71.25

# master02 ip address
export K8SHA_IP2=10.73.71.25

# master03 ip address
export K8SHA_IP3=10.73.71.25


# master01 hostname
export K8SHA_HOSTNAME1=kube-master01

# master02 hostname
export K8SHA_HOSTNAME2=kube-master02

# master03 hostname
export K8SHA_HOSTNAME3=kube-master03

#etcd tocken:
export ETCD_TOKEN=9489bf67bdfe1b3ae077d6fd9e7efefd

#etcd version
export ETCD_VERSION="v3.3.10"


##############################
# please do not modify anything below
##############################

# config etcd cluster
touch /etc/etcd.env
echo PEER_NAME=$(hostname) > /etc/etcd.env
echo PRIVATE_IP=$(hostname -i) >> /etc/etcd.env

sed \
-e "s/K8SHA_IPLOCAL/$(hostname -i)/g" \
-e "s/K8SHA_IP1/$K8SHA_IP1/g" \
-e "s/K8SHA_IP2/$K8SHA_IP2/g" \
-e "s/K8SHA_IP3/$K8SHA_IP3/g" \
-e "s/K8SHA_ETCDNAME/$(hostname)/g" \
-e "s/K8SHA_HOSTNAME1/$K8SHA_HOSTNAME1/g" \
-e "s/K8SHA_HOSTNAME2/$K8SHA_HOSTNAME2/g" \
-e "s/K8SHA_HOSTNAME3/$K8SHA_HOSTNAME3/g" \
template/etcd.service.tmpl > /etc/systemd/system/etcd.service
