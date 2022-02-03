#!/bin/bash

cd ..

./create-cluster.sh west ca la 101 &
./create-cluster.sh west ca la 102 &
./create-cluster.sh west ca la 103 &
./create-cluster.sh west ca sfo 101 &
./create-cluster.sh west ca sfo 102 &
./create-cluster.sh west ca sfo 103 &
./create-cluster.sh west ca sd 101 &
./create-cluster.sh west ca sd 102 &
./create-cluster.sh west ca sd 103 &

./create-cluster.sh west wa seattle 101 &
./create-cluster.sh west wa seattle 102 &
./create-cluster.sh west wa seattle 103 &
