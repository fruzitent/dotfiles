#!/usr/bin/env sh

ipaddr="192.168.1.1"

# i18n
uci set system.cfg01e48a.hostname="tplink_archer-c6-v2"
uci set system.cfg01e48a.zonename="Europe/Kyiv"

# luci
uci set luci.main.mediaurlbase="/luci-static/bootstrap-dark"
uci set uhttpd.main.listen_http="${ipaddr}:80"
uci set uhttpd.main.listen_https="${ipaddr}:443"
uci set uhttpd.main.redirect_https="1"

# network
uci set network.cfg030f15.macaddr="00:31:92:79:b0:a2"
uci set network.lan.ipaddr="${ipaddr}"
uci set wireless.@wifi-device[0].disabled="0"

# ssh
uci set dropbear.cfg014dd4.PasswordAuth="off"
uci set dropbear.cfg014dd4.RootPasswordAuth="off"

# static leases
uci add dhcp host
uci set dhcp.@host[-1].ip="192.168.1.10"
uci set dhcp.@host[-1].mac="20:4e:f6:f9:c8:b1"
uci set dhcp.@host[-1].name="asus_m515"

uci commit
