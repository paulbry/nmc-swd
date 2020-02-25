#!/bin/bash
set +e

# Deal with static modulesfiles that have been created prior to swci process
# Only run if deployment directory is present
if [ ! -d "${SWCI_DEPLOY_DIR}" ]; then
    echo "No ${SWCI_DEPLOY_DIR} found"
    echo "Skipping static modulefiles"
    exit 0
fi

cp -Ra ${SWCI_DEPLOY_DIR}/static_modulefiles/ ${SWCI_PREFIX}/modulefiles || echo "No static_modulefiles/lmod"
