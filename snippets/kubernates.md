# Kubernates

## kubectl

List Resources
```
# Deployment
kubectl get deployment

# Services
kubectl get services

# pods
kubectl get pods

# volumes
kubectl get pv
```

Describe resource
```
# Get a service in a specific namespace
kubectl --namespace kube-system describe service kubernetes-dashboard
```

## WEB UI

Install
```
kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml
```

Run the proxy to get an access to the UI form outside the cluster
```
kubectl proxy --address <ip_address> --port=9090 --accept-hosts='^*$'
```
