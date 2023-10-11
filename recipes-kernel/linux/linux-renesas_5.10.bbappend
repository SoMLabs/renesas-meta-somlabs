KERNEL_URL = "git://github.com/SoMLabs/somlabs-rz_linux-cip.git"
BRANCH = "rz-5.10-cip22-somlabs"
SRCREV = "3afb948a2e67d5f59aca065d101dcd3cbc916d44"

SRC_URI = "${KERNEL_URL};protocol=https;nocheckout=1;branch=${BRANCH}"

KBUILD_DEFCONFIG = "visionsom_defconfig"

COMPATIBLE_MACHINE_rzg2l = "(visionsom-g2l-cb)"
COMPATIBLE_MACHINE_rzv2l = "(visionsom-v2l-cb)"
