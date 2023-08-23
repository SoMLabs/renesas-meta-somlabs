inherit core-image

require include/core-image-renesas-base.inc
require include/core-image-renesas-mmp.inc
require include/core-image-bsp.inc

IMAGE_INSTALL += "somlabs-demo"

IMAGE_FEATURES += "ssh-server-dropbear"
