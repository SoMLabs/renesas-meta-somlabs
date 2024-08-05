BRANCH = "v2.9/rz-somlabs"

SRC_URI = " \
        git://github.com/SoMLabs/somlabs-rzg_trusted-firmware-a.git;branch=${BRANCH};protocol=https \
"

SRCREV = "3509ba29af6cc70fc8565d2ba9c6079ee9e36f1f"

PLATFORM_visionsom-g2l-cb = "g2l"
EXTRA_FLAGS_visionsom-g2l-cb = "BOARD=somlabs_x2l_1gb"

PLATFORM_visionsom-v2l-cb = "v2l"
EXTRA_FLAGS_visionsom-v2l-cb = "BOARD=somlabs_x2l_1gb"

COMPATIBLE_MACHINE_rzg2l = "(visionsom-g2l-cb)"
COMPATIBLE_MACHINE_rzv2l = "(visionsom-v2l-cb)"
