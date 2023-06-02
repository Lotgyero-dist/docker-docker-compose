#!/usr/bin/env bash

if [[ "${CLI_CONFIGURED_PATH}" -ne 1 ]]
then
    SCRIPTS_PATH="${WORK_PATH}/scripts.d";
    SCRIPTS_LIB_PATH="${SCRIPTS_PATH}/lib.d";
    CLI_CONFIGURED_PATH="1";
fi
