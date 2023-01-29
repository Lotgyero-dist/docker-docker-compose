#!/usr/bin/env bash

if [[ ! "${WORK_PATH}" ]]; then
    WORK_PATH="`(dirname \"${0}\")`";
    WORK_PATH="`( cd \"${WORK_PATH}/../\" && pwd )`";
    SCRIPTS_PATH="${WORK_PATH}/bin";
    source "${SCRIPTS_PATH}/lib-colors.sh";
fi

docker \
    buildx build \
    --platform linux/amd64 \
    --pull \
    --file "${WORK_PATH}/Dockerfile"\
    --tag "lotygerodistribution/docker-compose:latest" \
    "${WORK_PATH}/.";

exit 0;
