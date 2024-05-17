#!/usr/bin/env fish

/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator | while read --local line
    set --local key (string split --fields 1 "=" $line | string unescape)
    set --local val (string split --fields 2 "=" $line | string unescape)
    set --export $key $val
end
