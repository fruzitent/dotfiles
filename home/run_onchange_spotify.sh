#!/usr/bin/env bash

set -euxo pipefail

spicetify config custom_apps better-local-files
spicetify config custom_apps marketplace
spicetify config custom_apps stats

spicetify config extensions keyboardShortcut.js

spicetify apply
