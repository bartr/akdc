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

./create-cluster.sh east ga atlanta 101 &
./create-cluster.sh east ga atlanta 102 &
./create-cluster.sh east ga atlanta 103 &
./create-cluster.sh east ga athens 101 &
./create-cluster.sh east ga athens 102 &
./create-cluster.sh east ga athens 103 &

./create-cluster.sh east nc charlotte 101 &
./create-cluster.sh east nc charlotte 102 &
./create-cluster.sh east nc charlotte 103 &
./create-cluster.sh east nc raleigh 101 &
./create-cluster.sh east nc raleigh 102 &
./create-cluster.sh east nc raleigh 103 &

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
