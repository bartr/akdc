#!/bin/bash

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

az group list -o table | sort | grep west-
