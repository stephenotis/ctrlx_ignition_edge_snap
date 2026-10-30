# Ignition Edge on ctrlX OS

This repository packages the Ignition Edge Gateway as a snap for ctrlX OS. The
current build uses Ignition Edge **8.3.10** and produces snap version
`4.6.0+8.3.10`.

The Gateway starts as a service on the ctrlX Core. You can open it from the
sidebar icon or at port `9088`. The package manifest adds the sidebar icon and
links it to the Gateway.

## Build

1. Download the Ignition Edge 8.3.10 Linux zip installers for both supported
   architectures and put them in the repository's `bin/` directory:
   - `Ignition-Edge-linux-x86-64-8.3.10.zip` for amd64
   - `Ignition-Edge-linux-aarch-64-8.3.10.zip` for arm64
2. From the repository root, run the build script for the target architecture:
   ```sh
   ./build_snap_amd64.sh
   ```
   or
   ```sh
   ./build_snap_arm64.sh
   ```

The installer archives are not included in this repository. The snap sources,
version, and supported architectures are configured in
[`snap/snapcraft.yaml`](snap/snapcraft.yaml).

## Requirements

Snapcraft and the ctrlX Automation app build environment must be installed and
configured. See the [ctrlX Automation SDK documentation](https://boschrexroth.github.io/ctrlx-automation-sdk/latest/)
for setup information.
