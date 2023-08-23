KERNEL_URL = "git://github.com/SoMLabs/somlabs-rz_linux-cip.git"
BRANCH = "rz-5.10-cip22-somlabs"
SRCREV = "a2a5b38b31dee08e56fc230c3b14a0a1704e4b13"

SRC_URI = "${KERNEL_URL};protocol=https;nocheckout=1;branch=${BRANCH}"

KBUILD_DEFCONFIG = "visionsom_defconfig"

COMPATIBLE_MACHINE_rzg2l = "(visionsom-g2l-cb)"
COMPATIBLE_MACHINE_rzv2l = "(visionsom-v2l-cb)"
