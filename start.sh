#!/bin/bash
minikube start

minikube addons enable ingress

kubectl create namespace app-apache
kubectl create configmap apache-index --from-file=index.html -n app-apache
kubectl apply -f deployment.yaml -n app-apache
kubectl apply -f service.yaml -n app-apache
kubectl apply -f ingress.yaml -n app-apache

echo "Add the following line to your /etc/hosts file"
minikube ip
echo "apachetest"
