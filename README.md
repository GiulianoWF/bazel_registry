# Local Bazel Registry Setup

This repository contains scripts to set up a local Bazel registry at `/opt/fusion/registry`. The registry contains dependencies required for building Fusion project.

## Installation Options

There are two ways to set up the registry:

### 1. Assembly from Local Libraries (`assembly_from_local_libs.sh`)
This script assembles the registry by copying Qt5 libraries from your system's existing Qt installation.

```bash
sudo ./assembly_from_local_libs.sh
```

### 2. Direct Installation (`install_locally.sh`)
This script installs pre-packaged libraries directly from this repository.

```bash
sudo ./install_locally.sh
```

## Prerequisites
- Root access (sudo) the folder /opt is protected from non-root
- Bash shell
- For `assembly_from_local_libs.sh`: libraries must be currently installed on your system
- For `install_locally.sh`: No additional prerequisites as libraries are versioned in the repo

## Outputs
After running either script, the registry will be available at `/opt/fusion/registry`.

For detailed information about the registry structure and content, see the `/registry` directory in this repository.