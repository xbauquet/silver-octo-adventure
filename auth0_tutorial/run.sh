#!/usr/bin/env bash

kubectl apply -f deployment.yaml

# Installation of a Kubernetes ingress, the NGINX ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
minikube addons enable ingress
kubectl get pods -n ingress-nginx

# Run a service
kubectl apply -f service.yaml

# Root traffic with ingress
kubectl apply -f ingress.yaml