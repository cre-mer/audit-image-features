#!/bin/bash
set -e

echo "Installing uv, and web3 python tools..."
python3 -m pip install uv --break-system-packages --ignore-installed

su auditor -c 'uv tool install slither-analyzer crytic-compile vyper semgrep eth-wake solc-select'
su auditor -c 'uv tool update-shell'

su auditor -c "solc-select use ${SOLIDITYVERSION} --always-install"

echo "Installing Foundry..."
su auditor -c 'curl -L https://foundry.paradigm.xyz | bash'
su auditor -c 'source /home/auditor/.zshenv'
su auditor -c 'foundryup'

echo "Installing Hardhat..."
npm install --global hardhat

echo "Basic Web3 tools installed!"