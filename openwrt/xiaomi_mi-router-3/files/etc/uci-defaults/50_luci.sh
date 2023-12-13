#!/usr/bin/env sh

set -ex

ipaddr="192.168.1.2"

uci set luci.main.mediaurlbase="/luci-static/bootstrap-dark"

uci set uhttpd.main.listen_http="${ipaddr}:80"
uci set uhttpd.main.listen_https="${ipaddr}:443"
uci set uhttpd.main.redirect_https="1"

uci commit
