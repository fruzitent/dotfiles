#!/usr/bin/env sh

set -ex

radio0_key=
radio0_ssid=xiaomi_mi-router-3-5g

uci set wireless.@wifi-device[0].disabled="0"
uci set wireless.default_radio0.encryption="sae-mixed"
uci set wireless.default_radio0.key="${radio0_key}"
uci set wireless.default_radio0.ssid="${radio0_ssid}"
uci set wireless.default_radio0.wpa_disable_eapol_key_retries="1"

uci set wireless.radio0.cell_density="0"
uci set wireless.radio0.channel="157"
uci set wireless.radio0.country="US"
uci set wireless.radio0.htmode="VHT40"
uci set wireless.radio0.noscan="1"
uci set wireless.radio0.txpower="21"

radio1_key=
radio1_ssid=xiaomi_mi-router-3

uci set wireless.@wifi-device[1].disabled="0"
uci set wireless.default_radio1.encryption="psk-mixed"
uci set wireless.default_radio1.key="${radio1_key}"
uci set wireless.default_radio1.ssid="${radio1_ssid}"
uci set wireless.default_radio1.wpa_disable_eapol_key_retries="1"

uci set wireless.radio1.cell_density="0"
uci set wireless.radio1.channel="9"
uci set wireless.radio1.country="US"
uci set wireless.radio1.htmode="HT40"
uci set wireless.radio1.noscan="1"
uci set wireless.radio1.txpower="30"

uci commit

wifi reload
