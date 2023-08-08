#!/usr/bin/env bash

set -euxo pipefail

add_entry() {
  src=${1}
  dst=${2}
  sudo bash -c "echo '$(whoami) ALL=(ALL:ALL) NOPASSWD: ${src}' > ${dst}"
}

add_entry ~/.local/share/chezmoi/scripts/asus_wmi_fan.sh /etc/sudoers.d/50-asus_wmi_fan
