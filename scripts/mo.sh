#!/bin/bash

cd ..

./create-cluster.sh central mo stlouis 101 &
./create-cluster.sh central mo stlouis 102 &
./create-cluster.sh central mo stlouis 103 &
./create-cluster.sh central mo kc 101 &
./create-cluster.sh central mo kc 102 &
./create-cluster.sh central mo kc 103 &
