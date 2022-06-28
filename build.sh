#!/usr/bin/bash

source get_buildroot.sh

${BR_MAKE_ALIAS} X6100_defconfig
make -C build -j$((`nproc`))
