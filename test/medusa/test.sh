#!/bin/bash
set -e
source dev-container-features-test-lib

check "medusa version is printed" medusa --version

reportResults
