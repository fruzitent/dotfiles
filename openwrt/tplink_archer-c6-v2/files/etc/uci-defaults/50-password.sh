#!/usr/bin/env sh

set -ex

PASSWD=
USER=root

printf "%s\n%s" "${PASSWD}" "${PASSWD}" | passwd "${USER}"
