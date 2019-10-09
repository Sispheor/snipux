# Kubernetes

## Resources

List Resources

    # Deployment
    kubectl get deployment

    # Services
    kubectl get services

    # pods
    kubectl get pods

    # volumes
    kubectl get pv


Describe resource

    # Get a service in a specific namespace
    kubectl --namespace kube-system describe service kubernetes-dashboard

## Context

Use multiple kubeconfig files at the same time
    
    KUBECONFIG=~/.kube/config:~/.kube/kubconfig2

Extract config from kubeconfig

    kubectl config view --minify --flatten --context=my-cluster-name > out.txt


Get context info

    kubectl config get-contexts                          # display list of contexts 
    kubectl config current-context			             # display the current-context
    kubectl config use-context my-cluster-name           # set the default context to my-cluster-name


Delete context from kubeconfig

    kubectl config unset users.gke_project_zone_name
    kubectl config unset contexts.aws_cluster1-kubernetes
    kubectl config unset clusters.foobar-baz

## WEB UI

Install

    kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml


Run the proxy to get an access to the UI form outside the cluster

    kubectl proxy --address <ip_address> --port=9090 --accept-hosts='^*$'

