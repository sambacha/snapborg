#!/bin/bash
curl -X POST "http://127.0.0.1:5003/api/v0/id" || curl -X POST "http://127.0.0.1:5001/api/v0/id" 
if [ "$?" -eq "0" ]
then
    echo ""
    echo "Success:"
    echo "IPFS Online"
    exit 0
else
    echo ""
    echo "Error:"
    echo "IPFS Not Online"
    exit 1
fi