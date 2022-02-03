# AKDC

![License](https://img.shields.io/badge/license-MIT-green.svg)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)

- Create a k3d cluster in an Azure VM

## Setup

> From Azure Cloud Shell

- Clone this repo

```bash

# clone this repo
git clone https://github.com/bartr/akdc
cd akdc

```

- Set env variables

```bash

# set this value
export AKDC_PAT=YourPAT

# austin-101, austin-102, austin-103, austin-104, austin-105
export AKDC_HOST=austin-101

# central, east or west
export AKDC_REGION=central

# austin, dallas, houston, sanantonio, texas
export AKDC_DISTRICT=austin

export AKDC_LOC=centralus

```

- Create the k3d cluster

```bash

# create the RG
az group create -l $AKDC_LOC -n store-$AKDC_HOST

# create the install script from the template

# replace the host, pat, district and region
rm -f akdc.sh
sed "s/{{pat}}/$AKDC_PAT/g" akdc.templ | \
    sed "s/{{host}}/$AKDC_HOST/g" \
    sed "s/{{district}}/$AKDC_DISTRICT/g" \
    sed "s/{{region}}/$AKDC_REGION/g" \
    > akdc.sh

# create the VM
export AKDC_IP=$(az vm create \
  -g $AKDC_HOST \
  --admin-username akdc \
  -n akdc \
  --size standard_d2s_v3 \
  --image Canonical:UbuntuServer:18.04-LTS:latest \
  --os-disk-size-gb 128 \
  --generate-ssh-keys \
  --public-ip-sku Standard \
  --query publicIpAddress -o tsv \
  --custom-data akdc.sh)

echo $AKDC_IP

# ssh into the VM
sleep 5
ssh akdc@$AKDC_IP

```

## Check Status

- Wait for VM and k3d to install

```bash

# check the VM setup status
# wait for "complete"
cat status

# check the cluster
k get po -A

```

## Support

This project uses GitHub Issues to track bugs and feature requests. Please search the existing issues before filing new issues to avoid duplicates.  For new issues, file your bug or feature request as a new issue.

## Contributing

This project welcomes contributions and suggestions and has adopted the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct.html).

For more information see [Contributing.md](./.github/CONTRIBUTING.md)

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Any use of third-party trademarks or logos are subject to those third-party's policies.
