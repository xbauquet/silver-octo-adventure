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
192.168.99.100

# Clean-up
minikube stop
minikube delete

```