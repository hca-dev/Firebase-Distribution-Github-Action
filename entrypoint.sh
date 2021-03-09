#!/bin/sh

ls -lrt
printenv

firebase \
        appdistribution:distribute \
        "$INPUT_FILE" \
        --app "$INPUT_APPID" \
        --groups "$INPUT_GROUPS" \
        --release-notes "test" \
        --token "$INPUT_TOKEN"
