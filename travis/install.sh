#!/bin/bash

set -e

# Install golanci 2.0.2
if [[ "$TRAVIS_GO_VERSION" =~ ^1\.23\. ]]; then
    curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b $(go env GOPATH)/bin v2.0.2
fi
