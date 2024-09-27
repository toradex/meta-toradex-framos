FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
FILES_${PN} += "${WORKDIR}/wayland-app-launch.service"

DT_IMX662_PATH = "/proc/device-tree/soc@0/bus@30800000/i2c@30a40000/imx662_mipi@1a/name"
DT_IMX676_PATH = "/proc/device-tree/soc@0/bus@30800000/i2c@30a40000/imx676_mipi@1a/name"
DT_IMX678_PATH = "/proc/device-tree/soc@0/bus@30800000/i2c@30a40000/imx678_mipi@1a/name"

do_install:append () {
    # Append ConditionPathExists instructions dynamically in wayland-app-launch.service files
    sed -i  '/^\[Unit\]/!b;n;n;n;a ConditionPathExists=!${DT_IMX662_PATH}\nConditionPathExists=!${DT_IMX676_PATH}\nConditionPathExists=!${DT_IMX678_PATH}\n' ${WORKDIR}/wayland-app-launch.service 
    install -m 0644 ${WORKDIR}/wayland-app-launch.service ${D}${systemd_unitdir}/system
}