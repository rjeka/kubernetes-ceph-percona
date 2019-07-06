# This playbook install the etcd cluster on the kubernetes cluster master nodes
RUN:
ansible-playbook -i masters.ini etcd.yaml
