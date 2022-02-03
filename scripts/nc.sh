#!/bin/bash

cd ..

./create-cluster.sh east nc charlotte 101 &
./create-cluster.sh east nc charlotte 102 &
./create-cluster.sh east nc charlotte 103 &
./create-cluster.sh east nc raleigh 101 &
./create-cluster.sh east nc raleigh 102 &
./create-cluster.sh east nc raleigh 103 &
