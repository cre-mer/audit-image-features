#!/bin/bash
set -e

echo "Current user: $(whoami)"

echo "Installing uv, solc-select, and vyper..."
# python3 -m pip install uv --break-system-packages --ignore-installed
python3 -m pip install solc-select --break-system-packages --ignore-installed
python3 -m pip install vyper --break-system-packages --ignore-installed

su auditor -c "solc-select use ${SOLIDITYVERSION} --always-install"

echo "Installing Foundry..."
su auditor -c 'curl -L https://foundry.paradigm.xyz | bash'
su auditor -c 'source /home/auditor/.zshenv'
su auditor -c 'foundryup'

echo "Installing Hardhat and Hardhat CLI..."
npm install --global hardhat
npm install --global hardhat-cli

echo "Basic Web3 tools installed!"