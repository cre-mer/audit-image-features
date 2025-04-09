#!/bin/bash
set -e
source dev-container-features-test-lib

# Check that each tool works
check "circom version is printed" circom --version
check "snarkjs help is printed" snarkjs fi --help

reportResults
