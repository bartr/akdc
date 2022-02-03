#!/bin/bash

cd ..

./create-cluster.sh central mo stlouis 101 &
./create-cluster.sh central mo stlouis 102 &
./create-cluster.sh central mo stlouis 103 &
./create-cluster.sh central mo kc 101 &
./create-cluster.sh central mo kc 102 &
./create-cluster.sh central mo kc 103 &

./create-cluster.sh central tx austin 101 &
./create-cluster.sh central tx austin 102 &
./create-cluster.sh central tx austin 103 &
./create-cluster.sh central tx dallas 101 &
./create-cluster.sh central tx dallas 102 &
./create-cluster.sh central tx dallas 103 &
./create-cluster.sh central tx houston 101 &
./create-cluster.sh central tx houston 102 &
./create-cluster.sh central tx houston 103 &
