#!/bin/bash -e
minikube delete
sudo sh -c 'echo 1 > /proc/sys/vm/overcommit_memory'
sudo sh -c 'sync && echo 3 > /proc/sys/vm/drop_caches'
