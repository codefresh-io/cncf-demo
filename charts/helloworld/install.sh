#!/bin/bash -ex

# Install chart
helm upgrade --install helloworld . $@
