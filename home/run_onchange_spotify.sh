#!/usr/bin/env bash

set -euxo pipefail

spicetify config custom_apps stats
spicetify apply
