#!/bin/bash
set -e

echo "Installing Halmos..."

su auditor -c 'uv tool install halmos'
su auditor -c 'uv tool update-shell'

echo "Done!"