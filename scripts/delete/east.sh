#!/bin/bash

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

az group list -o table | sort | grep east-
