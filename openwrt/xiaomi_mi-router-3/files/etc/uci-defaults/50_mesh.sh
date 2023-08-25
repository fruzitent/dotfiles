#!/usr/bin/env sh

set -ex

mesh_key=""
mesh_ssid="_m_mesh"

uci set wireless.wifinet2=wifi-iface
uci set wireless.wifinet2.device="radio0"
uci set wireless.wifinet2.encryption="sae"
uci set wireless.wifinet2.key="${mesh_key}"
uci set wireless.wifinet2.mesh_fwding="1"
uci set wireless.wifinet2.mesh_id="${mesh_ssid}"
uci set wireless.wifinet2.mesh_rssi_threshold="0"
uci set wireless.wifinet2.mode="mesh"
uci set wireless.wifinet2.network="lan"

uci commit
