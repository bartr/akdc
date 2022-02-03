#!/bin/bash

if [ -z $AKDC_PAT ] || [ -z $AKDC_LOC ]; then
  echo "Please set AKDC_PAT and AKDC_LOC env variables"
  exit 1
fi

if [ $# -lt 1 ]; then
  echo "Usage: $0 store [District:austin] [Region:central]"
  exit 1
fi

Store=${1}
District=${2:-tx-austin}
Region=${3:-central}

# create the RG
az group create -l $AKDC_LOC -n store-$Store

# create the install script from the template

# replace the host, pat, district and region
rm -f store-$Store.sh
sed "s/{{pat}}/$AKDC_PAT/g" ./akdc.templ | \
    sed "s/{{store}}/$Store/g" | \
    sed "s/{{district}}/$District/g" | \
    sed "s/{{region}}/$Region/g" \
    > store-$Store.sh

# create the VM
IP=$(az vm create \
  -g store-$Store \
  --admin-username akdc \
  -n store-$Store \
  --size standard_d2s_v3 \
  --image Canonical:0001-com-ubuntu-server-focal:20_04-lts:20.04.202201310 \
  --os-disk-size-gb 128 \
  --generate-ssh-keys \
  --public-ip-sku Standard \
  --query publicIpAddress -o tsv \
  --custom-data store-$Store.sh)

echo "$Store  $IP"
echo "$Store  $IP" >> ips
