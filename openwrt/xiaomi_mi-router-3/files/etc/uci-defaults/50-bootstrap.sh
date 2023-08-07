#!/usr/bin/env sh

ipaddr="192.168.1.2"
macaddr="52:64:2b:63:f4:63"

# i18n
uci set system.cfg01e48a.hostname="xiaomi_mi-router-3"
uci set system.cfg01e48a.zonename="Europe/Kyiv"

# luci
uci set luci.main.mediaurlbase="/luci-static/bootstrap-dark"
uci set uhttpd.main.listen_http="${ipaddr}:80"
uci set uhttpd.main.listen_https="${ipaddr}:443"
uci set uhttpd.main.redirect_https="1"

# network
uci set network.cfg040f15.macaddr="${macaddr}"
uci set network.cfg060f15.macaddr="${macaddr}"
uci set network.globals.packet_steering="1"
uci set network.lan.ipaddr="${ipaddr}"
uci set wireless.@wifi-device[0].disabled="0"
uci set wireless.@wifi-device[1].disabled="0"

# ssh
uci set dropbear.cfg014dd4.PasswordAuth="off"
uci set dropbear.cfg014dd4.RootPasswordAuth="off"

# static leases
uci add dhcp host
uci set dhcp.@host[-1].ip="192.168.1.10"
uci set dhcp.@host[-1].mac="20:4e:f6:f9:c8:b1"
uci set dhcp.@host[-1].name="asus_m515"

uci commit
