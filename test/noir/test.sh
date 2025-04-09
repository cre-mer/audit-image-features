#!/bin/bash
set -e
source dev-container-features-test-lib

# Check that each tool works
check "nargo version is printed" nargo --version
check "bb version is printed" bb --version

reportResults
