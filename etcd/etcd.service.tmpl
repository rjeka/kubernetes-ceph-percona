[Unit]
Description=etcd
Documentation=https://github.com/coreos/etcd
Conflicts=etcd.service
Conflicts=etcd2.service

[Service]
EnvironmentFile=/etc/etcd.env
Type=notify
Restart=always
RestartSec=5s
LimitNOFILE=40000
TimeoutStartSec=0

ExecStart=/usr/local/bin/etcd --name K8SHA_ETCDNAME --data-dir /var/lib/etcd --listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 --advertise-client-urls http://K8SHA_IPLOCAL:2379,http://K8SHA_IPLOCAL:4001 --listen-peer-urls http://0.0.0.0:2380 --initial-advertise-peer-urls http://K8SHA_IPLOCAL:2380 --initial-cluster K8SHA_HOSTNAME1=http://K8SHA_IP1:2380,K8SHA_HOSTNAME2=http://K8SHA_IP2:2380,K8SHA_HOSTNAME3=http://K8SHA_IP3:2380 --initial-cluster-token ETCD_TOKEN --initial-cluster-state new

[Install]
WantedBy=multi-user.target
