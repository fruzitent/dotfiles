#!/usr/bin/env bash

set -euxo pipefail

curl https://raw.githubusercontent.com/jetfir3/SpotX-Bash/main/spotx.sh | sh -s -- -f -P /opt/spotify
