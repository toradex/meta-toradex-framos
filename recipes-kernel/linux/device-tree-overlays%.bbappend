FILESEXTRAPATHS:prepend := "${THISDIR}/device-tree-overlays:"

SRC_URI:append = "  file://verdin-imx8mp_imx662_overlay.dts \
                    file://verdin-imx8mp_imx676_overlay.dts \
                    file://verdin-imx8mp_imx678_overlay.dts \
                 "

do_collect_overlays:prepend () {
    cp ${WORKDIR}/*.dts ${WORKDIR}/git/overlays/
}