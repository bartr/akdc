#!/bin/bash

az group delete -y --no-wait -g central-tx-austin-101
az group delete -y --no-wait -g central-tx-austin-102
az group delete -y --no-wait -g central-tx-austin-103
az group delete -y --no-wait -g central-tx-dallas-101
az group delete -y --no-wait -g central-tx-dallas-102
az group delete -y --no-wait -g central-tx-dallas-103
az group delete -y --no-wait -g central-tx-houston-101
az group delete -y --no-wait -g central-tx-houston-102
az group delete -y --no-wait -g central-tx-houston-103
az group delete -y --no-wait -g central-mo-stlouis-101
az group delete -y --no-wait -g central-mo-stlouis-102
az group delete -y --no-wait -g central-mo-stlouis-103
az group delete -y --no-wait -g central-mo-kc-101
az group delete -y --no-wait -g central-mo-kc-102
az group delete -y --no-wait -g central-mo-kc-103

az group delete -y --no-wait -g east-ga-atlanta-101
az group delete -y --no-wait -g east-ga-atlanta-102
az group delete -y --no-wait -g east-ga-atlanta-103
az group delete -y --no-wait -g east-ga-athens-101
az group delete -y --no-wait -g east-ga-athens-102
az group delete -y --no-wait -g east-ga-athens-103
az group delete -y --no-wait -g east-nc-charlotte-101
az group delete -y --no-wait -g east-nc-charlotte-102
az group delete -y --no-wait -g east-nc-charlotte-103
az group delete -y --no-wait -g east-nc-raleigh-101
az group delete -y --no-wait -g east-nc-raleigh-102
az group delete -y --no-wait -g east-nc-raleigh-103

az group delete -y --no-wait -g west-ca-la-101
az group delete -y --no-wait -g west-ca-la-102
az group delete -y --no-wait -g west-ca-la-103
az group delete -y --no-wait -g west-ca-sfo-101
az group delete -y --no-wait -g west-ca-sfo-102
az group delete -y --no-wait -g west-ca-sfo-103
az group delete -y --no-wait -g west-ca-sd-101
az group delete -y --no-wait -g west-ca-sd-102
az group delete -y --no-wait -g west-ca-sd-103
az group delete -y --no-wait -g west-wa-seattle-101
az group delete -y --no-wait -g west-wa-seattle-102
az group delete -y --no-wait -g west-wa-seattle-103

az group list -o table | sort | grep -e central- -e east- -e west-
