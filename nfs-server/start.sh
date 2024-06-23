#!/bin/bash
set -e

# Create the /exports directory if it doesn't exist
mkdir -p /exports
chmod 777 /exports

# Start rpcbind
rpcbind

# Start NFS server
/usr/sbin/exportfs -a
/usr/sbin/rpc.nfsd --debug 8 --no-udp --no-nfs-version 2 --no-nfs-version 3

# Start mountd
/usr/sbin/rpc.mountd --debug all --no-udp --no-nfs-version 2 --no-nfs-version 3

# Keep the container running
tail -f /dev/null