[< Back](README.md)
# Ingress Minikube

[Link](https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)
## Command line log
```bash
minikube start

minikube addons enable ingress

kubectl apply -f web1-deployment.yaml
kubectl get pods

kubectl apply -f web1-service.yaml
kubectl get svc

minikube service web1-service --url

kubectl apply -f ingress.yaml


```
