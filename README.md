# fragata

[![Build Status](https://travis-ci.com/zunware/fragata.svg?branch=master)](https://travis-ci.com/zunware/fragata)

Lean and mean Microservices with Docker and Kubernetes

## About
Uses microservices

## Micro-Services
These are the different micro services that are setup and ran by docker

### Integration Tests
Uses lua busted to run tests

### Database
Runs a database for persisting data

### Web Server
Runs a web server for http comms

# Security Tools
- https://www.inspec.io/
- https://github.com/docker/docker-bench-security

# Tools
- https://healthchecks.io/
- https://sentry.io/welcome/
- https://travis-ci.org


# Docker

```bash
# Build with docker-compose
dco build
dco up -d
dco down
```

# Kubernetes

```bash
# Get all!
kubectl get all

# Run nginx using kubectl
kubectl run [podname] --image=nginx:alpine

# Expose a port for access outside of the cluster
kubectl port-forward [podname] 8080:80

# Need to delete a deployment, not individual pods (will respawn)
kubectl delete deployment [deploymentname]

# Perform validation on a podfile without affecting the cluster
kubectl create -f [podfile].yml --dry-run --validate=true

# Create pod from yaml
kubectl create -f file.pod.yml
# This one is better:
kubectl apply -f file.pod.yml

# Shell into a pod:
kubectl exec -it [podname] -- sh
#
```