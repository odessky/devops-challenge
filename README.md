# Solution Infrastructure Engineer (DevOps) Challenge

## Core problem
This is simulate of unstable microservices which randomly down after some time: a and dv
This can be avoid by execution at least two copy of each microservice and restart microservices in unhealth state
Solution will do it by pod life cycle feathure in replica set

## Environment
- linux
- minikube
- docker
- helm

## Scripts
- startup.sh : use it for prepare a minikube cluster
- chart.sh : use it after startup is finished success; if you got error 'Error: could not find tiller' just wait some time and run again
- shutdown.sh : use it for clean-up

### Issues:
- You may get 500 error if all replicas a or dv pods microservices stay in unhealt state
- You can increase replicas for reduce errors count. Need scale only a and dv
- There is a two test results for 5 replicas and 7 replicas
- Test command is: ab -kc 1 -t 600 'http://calc.devops-challenge/calc?vf=200&vi=5&t=123'
