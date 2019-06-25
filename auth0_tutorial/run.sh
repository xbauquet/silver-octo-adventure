#!/usr/bin/env bash

kubectl apply -f deployment.yaml

# Installation of a Kubernetes ingress, the NGINX ingress controller
# For minikube
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml

# For mac
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml

minikube addons enable ingress

# Run a service
kubectl apply -f service.yaml

# Root traffic with ingress
kubectl apply -f ingress.yaml

# Verify ingress installation
kubectl get pods --all-namespaces -l app.kubernetes.io/name=ingress-nginx --watch
