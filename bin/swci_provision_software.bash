#!/bin/bash

# Provision all software requirements via Spack envionrments
# Only run if deployment directory is present
if [ ! -d "${SWCI_DEPLOY_DIR}" ]; then
    echo "No ${SWCI_DEPLOY_DIR} found"
    echo "Skipping provisioning"
    exit 0
fi

# Grab current SWCI for potential debug purposes
set -e
echo "Current SWCI Environment"
env | grep SWCI
echo " "

set +e
cd ${SWCI_DEPLOY_DIR}
spack env status
spack compiler list

# load modules system
module use "$(spack config get config | grep lmod: | awk '{print substr($2, 0)}')/$(spack arch)/Core"

set -e
spack install

spack module lmod refresh -y

spack find
