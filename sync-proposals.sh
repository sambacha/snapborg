#!/bin/sh
ipfs-sync sync-files --from "$(SNAPSHOT_IPFS_GATEWAY)" --to "$(TARGET_IPFS_GATEWAYS)" --file-list ./data/proposals.txt --skip-existing
