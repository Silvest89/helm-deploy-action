#!/bin/sh

set -e
echo $1 | base64 -d > kubeca.ca
helm --kube-apiserver https://$2 --kube-ca-file kubeca.ca --kube-token $3 upgrade --install ecommerce $4 --version $5 -n $6
