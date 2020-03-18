#!/bin/bash -e

# Patch spack if required
if [ -d "${SWCI_CFG_DIR}/spack-patch" ]; then
    echo "${SWCI_CFG_DIR}/spack-patch found"
    echo "Patching Spack!"
    cp -R ${SWCI_CFG_DIR}/spack-patch/. ${spack}/
fi

# Ensure spack works
spack --version
whereis spack
echo $spack
