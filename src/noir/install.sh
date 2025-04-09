#!/bin/bash
set -e

# bb install dependency
apt-get update
apt-get install -y --no-install-recommends jq

echo "Installing Noir..."
su auditor -c 'curl -L https://raw.githubusercontent.com/noir-lang/noirup/refs/heads/main/install | bash'
su auditor -c 'source /home/auditor/.zshrc && noirup'

echo "Installing Barretenberg proving backend..."
su auditor -c 'curl -L https://raw.githubusercontent.com/AztecProtocol/aztec-packages/refs/heads/master/barretenberg/bbup/install | bash'
su auditor -c 'source /home/auditor/.zshrc && bbup'

echo "Noir installed!"