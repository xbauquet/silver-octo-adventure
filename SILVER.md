[< Back](README.md)
# Silver

## Command line log
```bash
minikube start

eval $(minikube docker-env)
cd main-api
docker build -f Dockerfile -t main-api .
cd ..

kubectl apply -f auth-deployment.yaml
kubectl apply -f api-deployment.yaml
kubectl get pods

kubectl apply -f auth-service.yaml
kubectl apply -f api-service.yaml
kubectl get svc

minikube addons enable ingress

kubectl apply -f ingress.yaml
kubectl get ingress

minikube ip


```