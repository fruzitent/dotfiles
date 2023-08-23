#!/usr/bin/env sh

set -ex

uci add dhcp host
uci set dhcp.@host[-1].ip="192.168.1.10"
uci set dhcp.@host[-1].mac="20:4e:f6:f9:c8:b1"
uci set dhcp.@host[-1].name="asus-m515"

uci commit
