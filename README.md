This unofficial repository is used for testing to compile the standard installer for Ignition Edge on linux into a snap format.
The Gateway launches on the CtrlX Core and can be accessed at http://localhost:8088. The package manifest file creates the sidebar menu icon linking to it.

Note: To reduce the size of the snap output, the Perspective Workstation, Designer Launcher and Vision Client Launcher contents have all been removed. Clicking those links in the Ignition Gateway will lead to a 404 error.

Note: The current sidebar link to the Ignition Gateway is not functioning.

Steps to snap Ignition Edge
1. Download the linux x86 and aarch64 zipped installer for Ignition Edge and place in folder bin/ located at the project root.
2. Make sure the filename matches the name in the snapcraft.yaml file for parts:ignitionedge
3. Adjust the revision number to match the Ignition Edge version
4. Execute the build snap script for the version you would like built (amd64 or arm64)

NOTE:
Assumes app build environment is setup for developing snaps for ctrlX Automation apps. Must have Snapcraft installed.
