#!/bin/sh

set -e


# Extract the base64 encoded config data and write this to the KUBECONFIG
mkdir -p ~/.kube
echo $INPUT_KUBECONFIG | base64 -d > ~/.kube/config

export GIT_SHA_SHORT=$(git rev-parse --short HEAD)
export CURRENT_DATE=$(date +%F-%T)
export ELEMENTARY_VERSION="$CURRENT_DATE-$GIT_SHA_SHORT"
sed -i 's/elementary_version/$ELEMENTARY_VERSION/g' k8s.yml
echo "Deploying $ELEMENTARY_VERSION"
sh -c "kubectl apply -f k8s.yml"