#!/usr/bin/env bash
(
    if [[ ! "${WORK_PATH}" ]]; then
        WORK_PATH="`(dirname \"${0}\")`";
        WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";
    fi

    source "${WORK_PATH}/scripts.d/lib.sh";

    docker \
        image push \
        lotygerodistribution/docker-compose:latest;

) || exit $? && exit 0;
