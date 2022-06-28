#!/usr/bin/bash

source br_release.env

if [ ! -e ${BR_RELEASE}.tar.gz ]; then
  wget https://buildroot.org/downloads/${BR_RELEASE}.tar.gz
  tar xf ${BR_RELEASE}.tar.gz
fi
make -C ${BR_RELEASE} BR2_EXTERNAL=../br2_external O=../build menuconfig
