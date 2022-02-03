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

az group list -o table | sort | grep central-
