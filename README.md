# Audit Devcontainer Features

This repository provides a collection of devcontainer features for enhancing development environments. The initial feature included is **Web3 Basic Tooling**, with more features planned for future releases.

## Features

For each of the following features, see `src/*/README.md` for details:

- web3 basics
- Noir circuit language
- Circom
- _more to come_

Additional features will be added to this repository to support a wider range of development workflows.

## Base Image

These features are designed to be used with the following [base image](https://github.com/Artifex1/audit-image-base):

```
ghcr.io/artifex1/audit-image-base:main
```

## Testing

You can test the features using the [devcontainer CLI](https://github.com/devcontainers/cli). Run:

```shell
devcontainer features test --base-image ghcr.io/artifex1/audit-image-base:main
```
