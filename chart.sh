#!/bin/bash -e
helm install --dry-run --debug devops-challenge/
eval $(minikube docker-env)
for ms in acceleration-a acceleration-calc acceleration-dv; do
    node_version=`cat $ms/.node-version`
    .  $ms/.env
    cat <<EOF>$ms/Dockerfile
    FROM node:$node_version-alpine
    WORKDIR /app
    ADD . /app
    RUN yarn install && yarn build
    EXPOSE $WEB_PORT
    ENTRYPOINT ["yarn"]
    CMD ["start"]
EOF
    docker build -t $ms ./$ms
    rm $ms/Dockerfile
done
helm upgrade --install devops-challenge devops-challenge/
