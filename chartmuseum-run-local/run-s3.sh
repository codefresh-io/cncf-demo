#!/bin/bash -ex

# replace with your own S3 bucket/region
chartmuseum --debug --port=8081 \
    --storage="amazon" \
    --storage-amazon-bucket="cncf-local-demo" \
    --storage-amazon-region="us-west-2"

