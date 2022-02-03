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

export AKDC_LOC=centralus

```

- Create the k3d cluster

```bash

# run create-cluster.sh

# valid params
# to use other values, add the directory to /deploy in the edge-gitops repo
# Store - austin-101  austin-102  austin-103  austin-104  austin-105
# Region - central  east  west (default: central)
# District - austin  dallas  houston  sanantonio  texas (default: austin)

./create-cluster.sh Store [Region] [District]

```

## Check Status

- Wait for VM and k3d to install

```bash

# ssh into the VM
ssh akdc@ip-from-output

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
