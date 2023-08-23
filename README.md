# meta-somlabs

## Introduction

Meta-somlabs is a layer providing the VisionSOM-x2L module (with RZ/G2L or RZ/V2L processor) and VisionCB-G2L/V2L-STD carrier board hardware support for Yocto Dunfell Renesas Linux system.

## System image

This layer should be used in order to build the system image. This layer adds a new example image called somlabs-image. It includes the SoMLabs demo application using the GTK and GStreamer libraries.

## Building the system image

The general description of the building process is described in the Renesas Yocto Start-Up Guide document:

https://www.renesas.com/eu/en/document/mas/rzg2-group-yocto-recipe-start-guide-vlp-v300

The summary of required steps including the meta-somlabs layer and helper scripts shown below:

```shell
mkdir renesas-yocto-dunfell
cd renesas-yocto-dunfell
repo init -u https://github.com/SoMLabs/renesas-meta-somlabs -b dunfell-3.0.3 -m renesas-somlabs-dunfell-3.0.3.xml
repo sync
```

System building may be configured for one of the available machine configurations:

* visionsom-g2l-cb - VisionSOM-x2L module with RZ/G2L processor and VisionCB-G2L/V2L-STD carrier board
* visionsom-v2l-cb - VisionSOM-x2L module with RZ/V2L processor and VisionCB-G2L/V2L-STD carrier board

System building may be started by the following commands:

```shell
MACHINE=<SELECTED_MACHINE> BUILD=<BUILD_DIRECTORY> source somlabs-setup-release.sh
bitbake somlabs-image
```

The somlabs-setup-release.sh script creates the build directory and initializes the configuration files. In order to configure the shell without overwriting the existing settings the following command may be executed:

```shell
source poky/oe-init-build-env <BUILD_DIRECTORY>
```

The output files are created in the build subdirectory <BUILD_DIRECTORY>/tmp/deploy/images/<SELECTED_MACHINE>:

* bl2_bp-<SELECTED_MACHINE>.bin - first stage loader binary
* fip-<SELECTED_MACHINE>.bin - bootloader binary
* somlabs-image-<SELECTED_MACHINE>.wic.bz2 - compressed system image


The instruction for the eMMC memory image installation may be found on the following wiki page:

* https://wiki.somlabs.com/index.php/Writing_VisionSOM-x2L_system_image_to_eMMC_memory
