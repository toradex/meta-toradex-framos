FILESEXTRAPATHS:prepend := "${THISDIR}/isp-imx/:"

SRC_URI:append = "file://0002-Add-support-for-imx6xx-sensors.patch"


FILES_SOLIBS_VERSIONED += " \
    ${libdir}/libimx662.so \
    ${libdir}/libimx676.so \
    ${libdir}/libimx678.so \
"

