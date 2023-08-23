#!/bin/bash
source poky/oe-init-build-env $BUILD

cp ../meta-somlabs/template/conf/local.conf conf/
cp ../meta-somlabs/template/conf/bblayers.conf conf/

echo "MACHINE = \"$MACHINE\"" >> conf/local.conf
