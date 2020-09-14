#!/usr/bin/env bash
set -e
set -x

cd manifests/

kubectl apply -f setup/
cd ..
kubectl apply -f manifests


kubectl get pod -n monitoring
kubectl get svc -n monitoring | grep grafana
