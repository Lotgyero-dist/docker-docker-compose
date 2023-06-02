#!/usr/bin/env bash

if [[ ! "${CLI_CONFIGURED_LIB}" ]];
then
    WORK_PATH="`(dirname \"${0}\")`";
    WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";

    export SCRIPTS_PATH="${WORK_PATH}/scripts.d";

    source "${SCRIPTS_PATH}/lib-path.sh";
    source "${SCRIPTS_LIB_PATH}/colors-bash.sh";

    source "${SCRIPTS_LIB_PATH}/functions.sh";

    CLI_CONFIGURED_LIB="1";
fi
