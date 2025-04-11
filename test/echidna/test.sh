#!/bin/bash
set -e
source dev-container-features-test-lib

check "echidna version is printed" echidna --version

reportResults
