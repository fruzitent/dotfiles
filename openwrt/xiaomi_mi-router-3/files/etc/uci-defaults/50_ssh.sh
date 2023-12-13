#!/usr/bin/env sh

set -ex

uci set dropbear.@dropbear[-1].PasswordAuth="off"
uci set dropbear.@dropbear[-1].Port="2222"
uci set dropbear.@dropbear[-1].RootPasswordAuth="off"

uci commit

/etc/init.d/dropbear restart
