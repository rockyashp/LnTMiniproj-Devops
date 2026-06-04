#!/bin/bash

while true
do
    POD=$(kubectl get pods -l app=k8sheal \
    -o jsonpath='{.items[*].metadata.name}' | tr ' ' '\n' | shuf -n 1)

    echo "================================="
    echo "Deleting Pod: $POD"
    echo "================================="

    kubectl delete pod "$POD"

    echo "Current Pods:"
    kubectl get pods

    echo "Waiting 10 seconds..."
    sleep 10
done