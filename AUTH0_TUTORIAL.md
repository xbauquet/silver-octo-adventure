[< Back](README.md)
# Auth0 Tutorial

[Link](https://auth0.com/blog/kubernetes-tutorial-step-by-step-introduction-to-basic-concepts/)
## Command line log
```bash
# Start minicube
minikube start

# Make sure it's running
kubectl version
kubectl get nodes

# After creating the deployment.yaml file
kubectl apply -f deployment.yaml
kubectl get pods

# Installation of a Kubernetes ingress, the NGINX ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
minikube addons enable ingress
kubectl get pods -n ingress-nginx

# Run a service
kubectl apply -f service.yaml
kubectl get services

# Root traffic with ingress
kubectl apply -f ingress.yaml
kubectl get ingresses

# See the result
minikube ip

# Clean-up
minikube stop
minikube delete

```

## Debug nginx-ingress
[Link](https://github.com/kubernetes/ingress-nginx/issues/411)
```bash
# Get all pods from all namespaces
kubctl get pods -A

# Enter the pod (The first container of the pod)
kubectl exec -it -n ingress-nginx nginx-ingress-controller-5694ccb578-zsflg bash

```