Bridge and VXLAN modules
========================

This repository contains the 3.13.0-83 bridge and vxlan kernel modules
extracted out of the tree so they can be built independantly.

Usage
-----

    make
    insmod bridge/bridge.ko
    insmod vxlan.ko


