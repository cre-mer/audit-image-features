#!/bin/bash
set -e

echo "Installing cargo-scout-audit..."
su auditor -c 'cargo install cargo-scout-audit'

echo "Basic Soroban tools installed!"