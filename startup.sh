#!/bin/bash -e
minikube start --memory=4096 --cpus=2
minikube addons enable ingress
helm init
