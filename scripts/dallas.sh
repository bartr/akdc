#!/bin/bash

cd ..

./create-cluster.sh tx-dallas-101 tx-dallas central &
./create-cluster.sh tx-dallas-102 tx-dallas central &
./create-cluster.sh tx-dallas-103 tx-dallas central &
./create-cluster.sh tx-dallas-104 tx-dallas central &
./create-cluster.sh tx-dallas-105 tx-dallas central &
