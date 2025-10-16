This unofficial repository is used for testing to compile the standard installer for Ignition Edge on linux into a snap format.
The Gateway launches on the CtrlX Core and can be accessed from the sidebar icon, or from port 8088. The package manifest file creates the sidebar menu icon linking to it.

Steps to snap Ignition Edge
1. Download the linux x86 and aarch64 zipped installer for Ignition Edge and place in folder bin/ located at the project root.
2. Make sure the filename matches the name in the snapcraft.yaml file for parts:ignitionedge

   Example: For Ignition release 8.1.45, adjust the filenames below within the snapcraft.yaml file to match:
   
```yaml
   parts:
         ignitionedge:
         plugin: dump
         source: 
             - on amd64 to arm64: ./bin/Ignition-Edge-linux-aarch-64-8.1.45.zip
             - on amd64 to amd64: ./bin/Ignition-Edge-linux-x86-64-8.1.45.zip
         source-type: zip
         ...
``` 
4. Adjust the revision number to match the Ignition Edge version

```yaml
   name: ctrlx-ignition-edge
   version: "8.1.45+dev"
```

5. Execute the build snap script for the version you would like built (amd64 or arm64)

NOTE:
Assumes app build environment is setup for developing snaps for ctrlX Automation apps. Must have Snapcraft installed. You can check the [CtrlX Automation SDK help file](https://boschrexroth.github.io/ctrlx-automation-sdk/latest/) for more information on this.
