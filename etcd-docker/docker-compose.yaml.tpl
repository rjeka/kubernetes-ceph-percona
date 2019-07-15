version: '2'
services:
  etcd:
    image: gcr.io/google_containers/etcd-amd64:3.3.10
    container_name: etcd
    hostname: etcd
    volumes:
    - /etc/ssl/certs:/etc/ssl/certs
    - /var/lib/etcd-cluster:/var/lib/etcd
    ports:
    - 4001:4001
    - 2380:2380
    - 2379:2379
    restart: always
    command: ["sh", "-c", "etcd --name=HOSTNAME \
      --advertise-client-urls=http://IPLOCAL:2379,http://IPLOCAL:4001 \
      --listen-client-urls=http://0.0.0.0:2379,http://0.0.0.0:4001 \
      --initial-advertise-peer-urls=http://IPLOCAL:2380 \
      --listen-peer-urls=http://0.0.0.0:2380 \
      --initial-cluster-token=ETCD_TOKEN \
      --initial-cluster=etcd1=http://K8SHA_IP1:2380,etcd2=http://K8SHA_IP2:2380,etcd3=http://K8SHA_IP3:2380
      --auto-tls \
      --peer-auto-tls \
      --data-dir=/var/lib/etcd"]
