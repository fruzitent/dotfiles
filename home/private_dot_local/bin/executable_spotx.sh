#!/usr/bin/env bash

set -euxo pipefail

# https://github.com/SpotX-Official/SpotX-Bash/blob/main/README.md#usage
curl "https://raw.githubusercontent.com/jetfir3/SpotX-Bash/main/spotx.sh" | sh -s -- -f -P "/opt/spotify"
