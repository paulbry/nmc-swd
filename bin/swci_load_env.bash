#!/bin/bash -e

# Prepare the env for any stage in the Spack deployment
# this is required to run before every stage
# script:
#   - source ./ci/bin/swci_load_env.bash
#
# SWCI env varitable list to be managed
#   - SWCI_HOST -> host system (e.g. mirage, dosequis)
#   - SWCI_MODE -> prod or dev (versioning responsibility of provisioning)
#   - SWCI_PREFIX -> root directory utilized (/ecp/sw/?)
#   - SWCI_CFG_DIR -> configuration for specific host
#   - SWCI_DEPLOY_DIR -> location of all provisioning details
#   - SWCI_SW_DIR -> host system root software dir (e.g  /ecp/sw/dev/mirage)
#   - SWCI_TEMP -> /tmp directory used for spack (avoid NFS)
#   - SWCI_SPACK_COMMIT -> Commit hash to be used for Spack
#   - SWCI_SPACK_REPO -> Repo to use (default https://github.com/spack/spack.git)

# Temp directory 
export SWCI_TEMP="${SWCI_TEMP}/spack-deploy"

# set Spack repo to default if not set in CI job
if [ ! -z "$var" ]; then
    export SWCI_SPACK_REPO="https://github.com/spack/spack.git"
fi

# git Spack
if [ "${CI_JOB_STAGE}" = cleanup ]; then
    echo "No Spack required for ${CI_JOB_STAGE}"
else
    rm -rf ${SWCI_TEMP}
    mkdir -p ${SWCI_TEMP}

    echo "Cloning Spack!"
    pushd ${SWCI_TEMP}
        ml git # load newer git module
        git clone ${SWCI_SPACK_REPO}
        
        # Switch to specific commit (if defined)
        # SWCI_SPACK_COMMIT
        if [ ! -z "$SWCI_SPACK_COMMIT" ]; then
            git checkout ${SWCI_SPACK_COMMIT}
        fi 
    popd
    
    # source spack
    source "${SWCI_TEMP}/spack/share/spack/setup-env.sh"
    export spack="${SWCI_TEMP}/spack"
fi

# remianing required env
export SWCI_SPACK_DIR="${SWCI_PREFIX}/spack"
export SWCI_PREFIX="${SWCI_PREFIX}/${SWCI_HOST}"
export SWCI_CFG_DIR="${CI_PROJECT_DIR=}/${SWCI_MODE}/${SWCI_HOST}"
export SWCI_DEPLOY_DIR="${SWCI_CFG_DIR}/${CI_JOB_STAGE}"
