#!/bin/bash

# This script is an example for running a generic ipfs-service-provider instance.

# Ports
export PORT=5001 # REST API port
export IPFS_TCP_PORT=5268
export IPFS_WS_PORT=5269

# The human-readible name that is used when displaying data about this node.
export COORD_NAME=free-bch.fullstack.cash

# Comment to disable circuit relay functionality. Or set to 1 to enable.
export ENABLE_CIRCUIT_RELAY=1
# For browsers to use your circuit realy, you must set up a domain, SSL certificate,
# and you must forward that subdomain to the IPFS_WS_PORT.
export CR_DOMAIN=free-bch-wss.fullstack.cash

# This is used for end-to-end encryption (e2ee).
export MNEMONIC="symptom attract buddy enable like distance soap disagree miracle pair favorite pig"

# 0 = less verbose. 3 = most verbose
export DEBUG_LEVEL=1

# MongoDB connection string.
#export DBURL=mongodb://localhost:27017/bch-service-dev

# Connect to the service on this VPS
# This machine
#export PREFERRED_PROVIDER=QmPXecxxXkRLy7MreH9DortC9xHMQbNtYudNa2PMcKiqXm
# Vancouver BC server
export PREFERRED_PROVIDER=QmUTx6KqYKVZbKpKxR7vGDUgZFYVvVVyEWDeCYq4GwBCff

npm start
