do_compile_append () {
        dd if=bl2_bp.bin of=boot.img seek=1 bs=512
        dd if=fip.bin of=boot.img seek=256 bs=512
}

do_deploy_append () {
        install -m 0644 ${S}/boot.img ${DEPLOYDIR}/boot-${MACHINE}.img
}

