#!/bin/bash

cd ..

./create-cluster.sh tx-houston-101 tx-houston central &
./create-cluster.sh tx-houston-102 tx-houston central &
./create-cluster.sh tx-houston-103 tx-houston central &
./create-cluster.sh tx-houston-104 tx-houston central &
./create-cluster.sh tx-houston-105 tx-houston central &
