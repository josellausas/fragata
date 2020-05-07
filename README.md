[![Build Status](https://travis-ci.com/zunware/fragata.svg?branch=master)](https://travis-ci.com/zunware/fragata)


# About
Lean and mean Continously Integrated and Deployed (CI/CD) Microservices.
(under development)

## Features

- [x] Micoservices
- [x] CI
- [ ] CD
- [ ] Kubernetes
- [ ] Monitoring

# Building and Running

You need to have docker and docker-compose installed then run:
`docker-compose --build up`

# Microservices

Using docker, we can run microservices. Use `docker-compose` to run all, or `docker` for individual services

Here is a list of microservices:

- Postgres (WIP)
- Django (WIP)
- Busted (WIP)
- Lapis (WIP)
- Nginx (WIP)
- MQTT (WIP)
- Prometheus (WIP)
- Grafana (WIP)

# Continous Integration
Uses Travis CI to continously integrate and build docker images:
The 'travis' tries to build all the images defined in `docker-compose.yml` and runs tests from `src/integration-test`.
Here is the build status for `master`: [![Build Status](https://travis-ci.com/zunware/fragata.svg?branch=master)](https://travis-ci.com/zunware/fragata)


# Continous Deployment
Not deployed yet. WIP


# Integration Tests (WIP)

Integration tests are inside `src/integration-test`
Uses busted. Run tests with `busted .`

# Monitoring

Uses Grafana and Prometheus containers to provide monitoring.

# Resources

## Security
- https://www.inspec.io/
- https://github.com/docker/docker-bench-security

## Tools
- https://healthchecks.io/
- https://sentry.io/welcome/

## CI
- https://travis-ci.org



## Docker Notes

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
# Deploy with Kubernetes
`cd` into `deploy` directory.
Apply deployments with `kubectl apply -f 00_namespace.yml`
