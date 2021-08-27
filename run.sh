#!/bin/bash


echo "Local Environment Starting..."

export GRAPHQL_ENDPOINT=https://hub.snapshot.org/graphql
export SPACES=ybaby.eth
export SNAPSHOT_IPFS_GATEWAY=https://ipfs.io
export TARGET_IPFS_GATEWAYS=http://127.0.0.1:5003/

echo "Starting sync with localhost"
npx ipfs-sync sync-files --from $SNAPSHOT_IPFS_GATEWAY --to http://127.0.0.1:5003/ --file-list ./data/proposals.txt --skip-existing
npx ipfs-sync sync-files --from $SNAPSHOT_IPFS_GATEWAY --to http://127.0.0.1:5003/ --file-list ./data/votes.txt --skip-existing



echo "NOTE: Ipfs default data dir is ~/.ipfs"
echo "WebUI via http://127.0.0.1:5003/webui"

