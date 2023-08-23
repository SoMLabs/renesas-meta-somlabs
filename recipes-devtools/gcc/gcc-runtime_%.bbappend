#Changes introduced in patch 9e444 https://git.yoctoproject.org/poky

# cortex-a55 is ARMv8.2-a based but libatomic explicitly asks for -march=armv8.1-a
# which caused -march conflicts in gcc
TUNE_CCARGS_remove = "-mcpu=cortex-a55+crc -mcpu=cortex-a55 -mcpu=cortex-a55+crc+crypto"
