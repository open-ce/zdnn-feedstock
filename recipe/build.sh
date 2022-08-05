#!/usr/bin/env bash

autoconf

CFLAGS_INIT="-march=z9-109" LD=$CC ./configure --prefix="${PREFIX}"

make all -C zdnn -j${CPU_COUNT} ${VERBOSE_AT} 

make install -C zdnn
