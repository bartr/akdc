#!/bin/bash

if [ -z $AKDC_PAT ] || [ -z $AKDC_LOC ]; then
  echo "Please set AKDC_PAT and AKDC_LOC env variables"
  exit 1
fi

if [ $# -lt 4 ]; then
  echo "Usage: $0 Region State City Store-Number"
  exit 1
fi

Region=${1}
State=${2}
City=${3}
Number=${4}
Disrict=$Region-$State-$City
Store=$District-$Number

echo $Region
echo $District
echo $Store
exit 0

# create the RG
az group create -l $AKDC_LOC -n $Store

# create the install script from the template

# replace the host, pat, district and region
rm -f cluster-$Store.sh
sed "s/{{pat}}/$AKDC_PAT/g" ./akdc.templ | \
    sed "s/{{store}}/$Store/g" | \
    sed "s/{{district}}/$District/g" | \
    sed "s/{{region}}/$Region/g" \
    > cluster-$Store.sh

# create the VM
IP=$(az vm create \
  -g $Store \
  --admin-username akdc \
  -n $Store \
  --size standard_D2as_v5 \
  --image Canonical:0001-com-ubuntu-server-focal:20_04-lts-gen2:latest \
  --os-disk-size-gb 128 \
  --storage-sku Premium_LRS \
  --generate-ssh-keys \
  --public-ip-sku Standard \
  --query publicIpAddress \
  -o tsv \
  --custom-data cluster-$Store.sh)

echo "$Store  $IP"
echo -e "$Store\t$IP" >> ips
