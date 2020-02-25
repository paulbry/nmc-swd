#!/bin/bash
# potentially helpful system debug

echo "=== swci_env_info ==="
date +'TIME='%T.%N
echo "PWD=$(pwd)"
echo "WHOAMI=$(whoami)"
echo "PID=$$"
echo "PPID=${PPID}"
echo "HOSTNAME=${HOSTNAME}"
echo "CI_JOB_ID=${CI_JOB_ID}"
echo "CI_JOB_NAME=${CI_JOB_NAME}"
echo "CI_JOB_STAGE=${CI_JOB_STAGE}"
echo "CI_PROJECT_NAME=${CI_PROJECT_NAME}"
echo "CI_PIPELINE_ID=${CI_PIPELINE_ID}"
echo "CI_RUNNER_ID=${CI_RUNNER_ID}"
echo "CI_RUNNER_TAGS=${CI_RUNNER_TAGS}"
