#!/usr/bin/env sh

set -ex

uci set dropbear.cfg014dd4.PasswordAuth="off"
uci set dropbear.cfg014dd4.RootPasswordAuth="off"

uci commit
