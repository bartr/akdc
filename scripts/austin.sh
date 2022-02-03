#!/bin/bash
cd ..

./create-cluster.sh tx-austin-101 tx-austin central &
./create-cluster.sh tx-austin-102 tx-austin central &
./create-cluster.sh tx-austin-103 tx-austin central &
./create-cluster.sh tx-austin-104 tx-austin central &
./create-cluster.sh tx-austin-105 tx-austin central &
