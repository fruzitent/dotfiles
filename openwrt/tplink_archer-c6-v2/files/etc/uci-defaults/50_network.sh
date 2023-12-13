#!/usr/bin/env sh

set -ex

ipaddr="192.168.1.1"
macaddr="00:31:92:79:b0:a2"

uci add network device
uci set network.@device[-1].macaddr="${macaddr}"
uci set network.@device[-1].name="eth0"

uci set network.globals.packet_steering="1"
uci set network.lan.ipaddr="${ipaddr}"

uci commit
