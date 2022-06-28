#!/usr/bin/bash

source br_config.sh

make -C build -j$((`nproc`))
