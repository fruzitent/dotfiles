#!/usr/bin/env sh

set -ex

passwd=""
user="admin"

printf "%s\n%s" "${passwd}" "${passwd}" | passwd "${user}"
