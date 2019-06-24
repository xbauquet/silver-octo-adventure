#!/usr/bin/env bash

kubectl apply -f auth-deployment.yaml
kubectl apply -f api-deployment.yaml

# Installation of a Kubernetes ingress, the NGINX ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
minikube addons enable ingress
kubectl get pods -n ingress-nginx

kubectl apply -f auth-service.yaml
kubectl apply -f api-service.yaml

kubectl apply -f ingress.yaml