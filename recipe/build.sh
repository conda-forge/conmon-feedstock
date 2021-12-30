#! /usr/bin/env bash

# On CentOS 6 with its glibc 2.12 we add librt explicitly.
# CentOS 7+ shouldn't need this anymore.
make \
  LIBS+=-lrt \
  CFLAGS+="-I$BUILD_PREFIX/include" \
  install.bin

make -C docs \
  GOMD2MAN=go-md2man
