DESCRIPTION = "SoMLabs demo application"
LICENSE = "BSD-3-Clause"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/BSD-3-Clause;md5=550794465ba0ec5312d6919e203a55f9"

inherit pkgconfig

DEPENDS += "wayland"
DEPENDS += "gtk+3"
DEPENDS += "gstreamer1.0"
DEPENDS += "gstreamer1.0-plugins-base"
DEPENDS += "gstreamer1.0-plugins-bad"
DEPENDS += "gstreamer1.0-libav"
DEPENDS += "glib-2.0"

SRC_URI = " \
    file://somlabs_demo_gui_launch.sh \
    file://main_gui.c \
    file://background.jpg \
    file://somlabs.png \
    file://theme.css \
    http://ftp.somlabs.com/misc/example_video.mp4 \
    "

SRC_URI[sha256sum] = "6e10c996cce94f6c1f6ba7ef1af7bb7066e30267a8cc1a3123f5bd9897e1a2b5"

S = "${WORKDIR}"

do_compile() {
    ${CC} ${CFLAGS} ${LDFLAGS} main_gui.c -o somlabs_demo_gui `pkg-config --cflags --libs gtk+-3.0 gstreamer-1.0 gstreamer-video-1.0 gstreamer-plugins-base-1.0 gstreamer-plugins-bad-1.0 glib-2.0` -rdynamic -I=/usr/lib/gstreamer-1.0/include -lgstwayland-1.0 -L=/usr/lib64/gstreamer-1.0/ -lgstwaylandsink
}

do_install() {
    install -d ${D}/usr/share/somlabs-demo/
    install -m 0755 somlabs_demo_gui ${D}/usr/share/somlabs-demo/
    install -m 0755 somlabs.png ${D}/usr/share/somlabs-demo/
    install -m 0755 theme.css ${D}/usr/share/somlabs-demo/
    install -m 0755 example_video.mp4 ${D}/usr/share/somlabs-demo/
    install -m 0755 background.jpg ${D}/usr/share/somlabs-demo/
    install -m 0755 somlabs_demo_gui_launch.sh ${D}/usr/share/somlabs-demo/
}

FILE_${PN} = " /usr/share/somlabs-demo/ "
