#!/usr/bin/env sh

set -ex

passwd=
user=root

printf "%s\n%s" "${passwd}" "${passwd}" | passwd "${user}"
