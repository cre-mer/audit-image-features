#!/bin/bash
set -e

echo "Installing Medusa..."
go install github.com/crytic/medusa@latest
echo "Done!"