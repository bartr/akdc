#!/bin/bash

cd ..

./create-cluster.sh ga-athens-101 ga-athens east &
./create-cluster.sh ga-athens-102 ga-athens east &
./create-cluster.sh ga-athens-103 ga-athens east &
./create-cluster.sh ga-athens-104 ga-athens east &
./create-cluster.sh ga-athens-105 ga-athens east &

./create-cluster.sh ga-atlanta-101 ga-atlanta east &
./create-cluster.sh ga-atlanta-102 ga-atlanta east &
./create-cluster.sh ga-atlanta-103 ga-atlanta east &
./create-cluster.sh ga-atlanta-104 ga-atlanta east &
./create-cluster.sh ga-atlanta-105 ga-atlanta east &

./create-cluster.sh ga-other-101 ga-other east &
./create-cluster.sh ga-other-102 ga-other east &
./create-cluster.sh ga-other-103 ga-other east &
./create-cluster.sh ga-other-104 ga-other east &
./create-cluster.sh ga-other-105 ga-other east &
