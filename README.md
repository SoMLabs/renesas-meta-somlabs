# meta-somlabs

## Introduction

Meta-somlabs is a layer providing the VisionSOM-x2L module (with RZ/G2L or RZ/V2L processor) and VisionCB-G2L/V2L-STD carrier board hardware support for Yocto Dunfell Renesas Linux system.

## System image

This layer should be used in order to build the system image. This layer adds a new example image called somlabs-image. It includes the SoMLabs demo application using the GTK and GStreamer libraries.

## Building the system image

The summary of required steps including the meta-somlabs layer and helper scripts shown below:

```shell
mkdir renesas-yocto-dunfell
cd renesas-yocto-dunfell
repo init -u https://github.com/SoMLabs/renesas-meta-somlabs -b dunfell-3.0.6 -m renesas-somlabs-dunfell-3.0.6.xml
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

In case of missing packages, the full offline packages archive may be downloaded from here:
* https://www.renesas.com/us/en/products/microcontrollers-microprocessors/rz-mpus/rzg2lc-general-purpose-mcus-dual-core-arm-cortex-a55-12-ghz-cpus-and-single-core-arm-cortex-m33-200-mhz-cpu#design_development

The graphics and video codec support as well as Chromium browser package are also available to download from renesas.com website:
* https://www.renesas.com/us/en/products/microcontrollers-microprocessors/rz-arm-based-high-end-32-64-bit-mpus/rzg2l-mali-graphic-library-evaluation-version#Download
* https://www.renesas.com/us/en/software-tool/rz-mpu-video-codec-library-evaluation-version-rzg2l#tools_support
* https://www.renesas.com/us/en/products/microcontrollers-microprocessors/rz-mpus/rzg2l-general-purpose-microprocessors-dual-core-arm-cortex-a55-12-ghz-cpus-and-single-core-arm-cortex-m33
* https://www.renesas.com/us/en/products/microcontrollers-microprocessors/rz-arm-based-high-end-32-64-bit-mpus/rz-mpu-graphics-library-evaluation-version-rzv2l
* https://www.renesas.com/us/en/products/microcontrollers-microprocessors/rz-arm-based-high-end-32-64-bit-mpus/rz-mpu-video-codec-library-evaluation-version-rzv2l#tools_support

The output files are created in the build subdirectory <BUILD_DIRECTORY>/tmp/deploy/images/<SELECTED_MACHINE>:

* bl2_bp-<SELECTED_MACHINE>.bin - first stage loader binary
* fip-<SELECTED_MACHINE>.bin - bootloader binary
* boot-<SELECTED_MACHINE>.img - boot partition image containing bl2_bp* and fip* binaries
* somlabs-image-<SELECTED_MACHINE>.wic.bz2 - compressed system image


The instruction for the eMMC memory image installation may be found on the following wiki page:

* https://wiki.somlabs.com/index.php/Writing_VisionSOM-x2L_system_image_to_eMMC_memory
