PACKAGE_ARCH = "${MACHINE_ARCH}"

FLASH_WRITER_URL = "git://github.com/SoMLabs/rzg2_flash_writer"
BRANCH = "visionsom-g2l"

SRC_URI = "${FLASH_WRITER_URL};branch=${BRANCH}"
SRCREV = "1e25f46d92e4e7adb3b4fddd0910acb638f34527"

do_compile() {
        if [ "${MACHINE}" = "visionsom-g2l-cb" ]; then
                BOARD="VSOM_G2L_1GB";
        elif [ "${MACHINE}" = "visionsom-v2l-cb" ]; then
                BOARD="VSOM_V2L_1GB";
        fi
        cd ${S}

        oe_runmake BOARD=${BOARD}
}


