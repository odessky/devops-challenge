# Solution Infrastructure Engineer (DevOps) Challenge

## Core issue
This is simulate of unstable microservices which randomly down after some time
This can be avoid by execution at least two copy of each microservice and restart microservices in unhealth state
Solution will do it by pod life cycle feathure in replica set


## Environment
- linux
- minikube
- docker
- helm

## Solution
- startup.sh : use it for prepare a minikube cluster
- chart.sh : use it after startup is finished success; if you got error 'Error: could not find tiller' just wait some time and run again
- shutdown.sh : use it for clean-up
