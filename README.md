# Audit Devcontainer Features

This repository provides a collection of devcontainer features for enhancing development environments. The initial feature included is **Web3 Basic Tooling**, with more features planned for future releases.

## Features

For each of the following features, see `src/*/README.md` for details:

- Web3 basics
- Noir circuit language
- Circom
- Echidna
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

## Template

Find an example devcontainer configuration in `.devcontainer/devcontainer.json`. Make a local copy of it and adjust it to your needs, e.g., to add custom VS Code settings or install extensions. To ease the copying of the devcontainer config for various repositories, consider the `dev-template` script. This has two commands:

**Update:** To update the internal reference template with a new `devcontainer.json` file.

```bash
dev-template update /path/to/new/devcontainer.json
```

**Apply:** To create a `.devcontainer` folder with the current `devcontainer.json` template in your project directory.

```bash
dev-template apply /path/to/project
```

Simply copy the `dev-template` script in a folder that is in PATH and `chmod +x path/to/dev-template`.
