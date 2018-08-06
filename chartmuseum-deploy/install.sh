#!/bin/bash -ex

# TODO: Populate AWS credentials

# Add stable repo
helm repo add stable https://kubernetes-charts.storage.googleapis.com

# Install chartmuseum chart
helm upgrade --install cncf-demo stable/chartmuseum \
    -f custom-values.yaml \
    -f aws-creds.yaml

