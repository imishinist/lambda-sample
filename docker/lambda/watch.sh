#!/bin/bash

watchexec -w /app/ --force-poll 100ms -r /entrypoint.sh "$@"
