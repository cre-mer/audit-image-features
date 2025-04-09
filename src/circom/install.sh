#!/bin/bash
set -e

echo "Installing Circom..."
git clone https://github.com/iden3/circom.git
cd circom
cargo build --release
cargo install --path circom

echo "Installing snarkjs..."
npm install -g snarkjs
