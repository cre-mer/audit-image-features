#!/bin/bash
set -e

echo "Installing Echidna..."

ECHIDNA_VERSION="2.2.6"
ECHIDNA_FILENAME="echidna-${VERSION}-x86_64-linux.tar.gz"
ECHIDNA_URL="https://github.com/crytic/echidna/releases/download/v${VERSION}/${ECHIDNA_FILENAME}"
INSTALL_DIR="/usr/local/bin"

# Download the Echidna binary as root
wget -q "${ECHIDNA_URL}" -P /tmp

# Ensure the installation directory exists (it likely does in most base images)
mkdir -p "${INSTALL_DIR}"

# Extract the Echidna binary directly to /tmp
tar -xzf "/tmp/${ECHIDNA_FILENAME}" -C "/tmp"

# Move the Echidna executable to the system-wide bin directory
mv "/tmp/echidna" "${INSTALL_DIR}"

# Make the Echidna executable accessible to all users
chmod +x "${INSTALL_DIR}/echidna"

# Clean up temporary file
rm "/tmp/${ECHIDNA_FILENAME}"

echo "Done!"