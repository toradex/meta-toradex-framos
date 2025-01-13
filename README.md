This README file contains information on the contents of the meta-toradex-framos layer.

Please see the corresponding sections below for details.

Dependencies
============

- meta-toradex-nxp
  - URI: git://git.toradex.com/meta-toradex-nxp
  - branch: scarthgap-7.x.y
  - revision: HEAD

- meta-toradex-bsp-common
  - URI: git://git.toradex.com/meta-toradex-bsp-common
  - branch: scarthgap-7.x.y
  - revision: HEAD

- meta-toradex-distro
  - URI: git://git.toradex.com/meta-toradex-distro
  - branch: scarthgap-7.x.y
  - revision: HEAD


Patches
=======

Please submit any patches against the meta-toradex-framos layer to the maintainer.

Maintainer: Marcio Albano H. Ferreira <marcio.ferreira@toradex.com>

Table of Contents
=================

  I. Adding the meta-toradex-framos layer to your build

 II. Misc

 III. Licensing


I. Adding the meta-toradex-framos layer to your build
=================================================

Run 'bitbake-layers add-layer meta-toradex-framos'

II. Misc
========

Additional information about the Framos Cameras:
- [Framos FSM:GO IMX662](https://www.framos.com/en/products/fsmgo-with-imx662-sensor-27362)
- [Framos FSM:GO IMX676](https://www.framos.com/en/products/fsmgo-with-imx676-sensor-27363)
- [Framos FSM:GO IMX678](https://www.framos.com/en/products/fsmgo-with-imx678-sensor-27364)

It is recommended that this layer is used only with the [Toradex Linux BSP](https://developer.toradex.com/linux-bsp/os-development/build-yocto/build-a-reference-image-with-yocto-projectopenembedded)

Supported products:

- [Verdin iMX8M Plus](https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx-8m-plus)

This repository is maintained by [Toradex](https://www.toradex.com/), with code provided by [Framos](https://www.framos.com)

III. Licensing
==============

This layer is mainly distributed under the MIT License.
However,some files fetched by this layer are licensed under the MIT and/or GPLv2 licenses.

Please check each fetched file to check under which license it is distributed.

For the full terms of each license, see the following:

- [MIT License](LICENSES/LICENSE-MIT)
- [GPLv2 License](LICENSES/LICENSE-GPLv2)

For questions, please contact: <marcio.ferreira@toradex.com>