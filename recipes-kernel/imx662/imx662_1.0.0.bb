SUMMARY = "Example of how to build an external Linux kernel module"
LICENSE = "GPLv2 & MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=daed7c09a7c1b1d115c65ff99250044b"


inherit module

SRC_URI = " \
    git://github.com/framosimaging/framos-nxp-drivers.git;branch=lf-6.6.3_1.0.0;protocol=https;destsuffix=imx662-source \
    file://Makefile \
    file://COPYING \
"
SRCREV = "3bb0c957a4e14143451b119d030e39f783767b31"

S = "${WORKDIR}"

do_configure:prepend() {
    cp ${S}/imx662-source/isp-vvcam/vvcam/v4l2/sensor/imx662/imx662_mipi.c ${WORKDIR}
    cp ${S}/imx662-source/isp-vvcam/vvcam/v4l2/sensor/imx662/imx662_regs.h ${WORKDIR}
    cp ${S}/imx662-source/isp-vvcam/vvcam/common/vvsensor.h ${WORKDIR}
}


RPROVIDES_${PN} += "kernel-module-imx662" 

