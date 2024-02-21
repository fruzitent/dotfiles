#!/usr/bin/env bash

set -euxo pipefail

sudo chezmoi \
    --cache "${XDG_CACHE_HOME}/chezmoi/root" \
    --destination "/" \
    --persistent-state "${XDG_CONFIG_HOME}/chezmoi/root/chezmoistate.boltdb" \
    --source "${XDG_DATA_HOME}/chezmoi/root" \
    "${@}"
