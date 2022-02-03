# AKDC

![License](https://img.shields.io/badge/license-MIT-green.svg)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)

- Create a k3d cluster in an Azure VM

## Setup

> From Azure Cloud Shell

- Add to your .bashrc

```bash

# Flux needs a PAT for the repo
export AKDC_PAT=YourPAT

# helper function to ssh by store name
ss() {
  # run ssh using the ips file
  ssh akdc@$(cat ips | grep $1 | tail -1 | cut -f2)
}

# source the changes
source $HOME/.bashrc

```

- Clone this repo

```bash

# clone this repo
git clone https://github.com/bartr/akdc
cd akdc

```

- Set env variables

```bash

# set this value (if not set in .bashrc)
export AKDC_PAT=YourPAT

# check the value
echo $AKDC_PAT

```

- Create the k3d cluster

- Valid params (case sensitive!)

```text
Region	State	City
central	tx		austin
central	tx		dallas
central	tx		houston
central	mo		kc
central	mo		stlouis
east	ga		athens
east	ga		atlanta
east	nc		charlotte
east	nc		raleigh
west	ca		la
west	ca		sd
west	ca		sfo
west	wa		seattle

Number - 101, 102, 103

```

```bash

# run create-cluster.sh
./create-cluster.sh Region State City Number [Azure Region: centralus]

```

## Check Status

- Wait for VM and k3d to install

```bash

# ssh into the VM
# use the full store name Region-State-City-Number
ss akdc@central-tx-austin-101

# check the VM setup status
# wait for "complete"
cat status

# force Flux to sync
sync

```

## Support

This project uses GitHub Issues to track bugs and feature requests. Please search the existing issues before filing new issues to avoid duplicates.  For new issues, file your bug or feature request as a new issue.

## Contributing

This project welcomes contributions and suggestions and has adopted the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct.html).

For more information see [Contributing.md](./.github/CONTRIBUTING.md)

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Any use of third-party trademarks or logos are subject to those third-party's policies.
