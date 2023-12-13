#!/usr/bin/env sh

set -ex

uci set system.cfg01e48a.hostname="tplink_archer-c6-v2"
uci set system.cfg01e48a.zonename="Europe/Kyiv"

uci commit
