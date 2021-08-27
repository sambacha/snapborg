#!/bin/bash

echo "==> Configuring Enivornment..."

export GRAPHQL_ENDPOINT=https://hub.snapshot.org/graphql
echo $?
export SPACES=ybaby.eth
echo $?
export SNAPSHOT_IPFS_GATEWAY=https://ipfs.io
echo $?
export TARGET_IPFS_GATEWAYS=http://127.0.0.1:5003/
echo $?
sleep 1
exit 0