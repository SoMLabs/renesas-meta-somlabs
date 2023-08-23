BRANCH = "v2.7/rz-somlabs"

SRC_URI = " \
        git://github.com/SoMLabs/somlabs-rzg_trusted-firmware-a.git;branch=${BRANCH};protocol=https \
        git://github.com/ARMmbed/mbedtls.git;branch=${BRANCH_mbedtls};name=mbedtls;destsuffix=mbedtls \
"

SRCREV = "47b6c61c53b74a58924770f50e9f393770d7d429"

PLATFORM_visionsom-g2l-cb = "g2l"
EXTRA_FLAGS_visionsom-g2l-cb = "BOARD=somlabs_x2l_1gb"

PLATFORM_visionsom-v2l-cb = "v2l"
EXTRA_FLAGS_visionsom-v2l-cb = "BOARD=somlabs_x2l_1gb"

COMPATIBLE_MACHINE_rzg2l = "(visionsom-g2l-cb)"
COMPATIBLE_MACHINE_rzv2l = "(visionsom-v2l-cb)"
