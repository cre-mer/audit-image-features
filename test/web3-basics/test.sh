#!/bin/bash
set -e
source dev-container-features-test-lib

# Check that each tool works
check "cargo version is printed" cargo --version
check "solc-select versions are printed" solc-select versions
check "solc version is printed" solc --version
check "slither version is printed" slither --version
check "crytic-compile version is printed" crytic-compile --version
check "semgrep version is printed" semgrep --version
check "wake version is printed" wake --version
check "vyper version is printed" vyper --version

check "forge version is printed" forge --version
check "hardhat version is printed" npx hardhat --version

reportResults
