KERNEL_URL = "git://github.com/SoMLabs/somlabs-rz_linux-cip.git"
BRANCH = "rz-5.10-cip41-somlabs"
SRCREV = "b401277b334071b9f15bedf9320a74bbcbb175e3"

SRC_URI = "${KERNEL_URL};protocol=https;nocheckout=1;branch=${BRANCH}"

KBUILD_DEFCONFIG = "visionsom_defconfig"

COMPATIBLE_MACHINE_rzg2l = "(visionsom-g2l-cb)"
COMPATIBLE_MACHINE_rzv2l = "(visionsom-v2l-cb)"
