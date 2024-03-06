#!/bin/bash

echo "post-start start" >> ~/status

# this runs in background each time the container starts

# kind delete cluster --name akuity-declarative-example
# kind create cluster --config .devcontainer/kind-cluster.yaml

echo "post-start complete" >> ~/status