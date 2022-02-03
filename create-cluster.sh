#!/bin/bash

if [ -z $AKDC_PAT ] || [ -z $AKDC_LOC ]; then
  echo "Please set AKDC_PAT and AKDC_LOC env variables"
  exit 1
fi

if [ $# -lt 1 ]; then
  echo "Usage: $0 store [Region] [District]"
  exit 1
fi

Store=${1}
Region=${2:-central}
District=${3:-austin}

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
export AKDC_IP=$(az vm create \
  -g store-$Store \
  --admin-username akdc \
  -n store-$Store \
  --size standard_d2s_v3 \
  --image Canonical:UbuntuServer:18.04-LTS:latest \
  --os-disk-size-gb 128 \
  --generate-ssh-keys \
  --public-ip-sku Standard \
  --query publicIpAddress -o tsv \
  --custom-data store-$Store.sh)

echo $AKDC_IP
