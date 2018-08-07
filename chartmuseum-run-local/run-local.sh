#!/bin/bash -ex

chartmuseum --debug --port=8080 \
    --storage="local" \
    --storage-local-rootdir="$(pwd)/charts"

