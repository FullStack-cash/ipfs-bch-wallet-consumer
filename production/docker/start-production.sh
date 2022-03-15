#!/bin/bash

# BEGIN: Optional configuration settings

# This mnemonic is used to set up persistent public key for e2ee
# Replace this with your own 12-word mnemonic.
# You can get one at https://wallet.fullstack.cash.
export MNEMONIC="process cruel lonely arrest ritual bean until abstract craft example process twenty"

# The human readable name this IPFS node identifies as.
export COORD_NAME=pdx01-usa-bch-consumer.fullstackcash.nl

# Allow this node to function as a circuit relay. It must not be behind a firewall.
#export ENABLE_CIRCUIT_RELAY=true
# For browsers to use your circuit realy, you must set up a domain, SSL certificate,
# and you must forward that subdomain to the IPFS_WS_PORT.
#export CR_DOMAIN=subdomain.yourdomain.com

# Debug level. 0 = minimal info. 2 = max info.
export DEBUG_LEVEL=2

# END: Optional configuration settings


# Production database connection string.
export DBURL=mongodb://172.17.0.1:5557/ipfs-bch-consumer-prod

# Configure REST API port
export PORT=5012

# Production settings using external go-ipfs node.
export CONSUMER_ENV=production
export IPFS_HOST=172.17.0.1
export IPFS_API_PORT=5003
export IPFS_TCP_PORT=4003
#export IPFS_WS_PORT=5269

# Decatur
#export PREFERRED_PROVIDER=12D3KooWBXuJHsAoqkn3NwwFsGzWkNkRYH17RtNJY2snTSxQpikS

# PDX
export PREFERRED_PROVIDER=12D3KooWSq3FtepuvgqmDjVBjUo2HfH1XQXayQpcRSWvmcjGG28j

# BC Canada
#export PREFERRED_PROVIDER=12D3KooWHhpe6v5sjiVaYLakt5YqbudRGcZtUo7KskdBotowDu18

npm start
