#!/bin/bash
set -e
source dev-container-features-test-lib

check "halmos version is printed" halmos --version

reportResults

