KERNEL_URL = "git://github.com/SoMLabs/somlabs-rz_linux-cip.git"
BRANCH = "rz-5.10-cip36-somlabs"
SRCREV = "1cd7037e7591942f4d15448e8bbb2ed96adb8f56"

SRC_URI = "${KERNEL_URL};protocol=https;nocheckout=1;branch=${BRANCH}"

KBUILD_DEFCONFIG = "visionsom_defconfig"

COMPATIBLE_MACHINE_rzg2l = "(visionsom-g2l-cb)"
COMPATIBLE_MACHINE_rzv2l = "(visionsom-v2l-cb)"
