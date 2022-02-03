#!/bin/bash

cd ..

./create-cluster.sh west wa seattle 101 &
./create-cluster.sh west wa seattle 102 &
./create-cluster.sh west wa seattle 103 &
