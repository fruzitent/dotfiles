#!/usr/bin/env bash

set -exuo pipefail

directory=${1}
swww query # || swww init

while true; do
  next_file=$(find "${directory}" -type f | shuf --head-count 1)
  swww img "${next_file}" --transition-fps 60 --transition-step 2 --transition-type any
  sleep $((60 * 30))
done
