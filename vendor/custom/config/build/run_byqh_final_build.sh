#!/bin/bash
echo "================================================="
echo " STARTING BY_QH OS ULTIMATE FINAL BUILD "
echo "================================================="
source build/envsetup.sh
lunch byqh_user
m -j$(nproc) bacon
echo "Build Completed Successfully!"
