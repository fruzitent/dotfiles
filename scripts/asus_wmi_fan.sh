#!/usr/bin/env bash

set -euxo pipefail

device=$(echo /sys/devices/platform/asus-nb-wmi/hwmon/hwmon?/pwm1_enable)

if [[ ! $(cat "${device}") -eq 0 ]]; then
  sudo bash -c "echo '0' > ${device}"
else
  sudo bash -c "echo '2' > ${device}"
fi
