#!/usr/bin/env bash

hypr_mode=$(hyprctl getoption animations:enabled | awk 'NR==2{print $2}')

if [[ ! "${hypr_mode}" -eq 0 ]]; then
  hyprctl --batch "\
    keyword animations:enabled false;\
    keyword decoration:blur false;\
    keyword decoration:drop_shadow false;\
    keyword decoration:rounding 0;\
    keyword general:border_size 1;\
    keyword general:gaps_in 0;\
    keyword general:gaps_out 0;\
  "
else
  hyprctl reload
fi
