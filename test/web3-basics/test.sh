#!/bin/bash
set -e
source dev-container-features-test-lib

# Check that each tool works
check "solc version is printed" solc --version
check "solc-select version is printed" solc-select versions
check "forge version is printed" forge --version
check "hardhat version is printed" npx hardhat --version
check "vyper version is printed" vyper --version

reportResults
