#!/usr/bin/env sh

set -ex

uci set system.cfg01e48a.hostname="xiaomi_mi-router-3"
uci set system.cfg01e48a.zonename="Europe/Kyiv"

uci commit
