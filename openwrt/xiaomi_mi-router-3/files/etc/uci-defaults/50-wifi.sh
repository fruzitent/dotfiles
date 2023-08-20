#!/usr/bin/env sh

set -ex

RADIO0_KEY=
RADIO0_SSID=xiaomi_mi-router-3-5g

RADIO1_KEY=
RADIO1_SSID=xiaomi_mi-router-3

uci set wireless.@wifi-device[0].disabled="0"
uci set wireless.default_radio0.encryption="sae-mixed"
uci set wireless.default_radio0.key="${RADIO0_KEY}"
uci set wireless.default_radio0.ssid="${RADIO0_SSID}"
uci set wireless.default_radio0.wpa_disable_eapol_key_retries="1"
uci set wireless.radio0.cell_density="0"
uci set wireless.radio0.txpower="23"

uci set wireless.@wifi-device[1].disabled="0"
uci set wireless.default_radio1.encryption="psk-mixed"
uci set wireless.default_radio1.key="${RADIO1_KEY}"
uci set wireless.default_radio1.ssid="${RADIO1_SSID}"
uci set wireless.default_radio1.wpa_disable_eapol_key_retries="1"
uci set wireless.radio1.cell_density="0"
uci set wireless.radio1.txpower="22"

uci commit
wifi reload
