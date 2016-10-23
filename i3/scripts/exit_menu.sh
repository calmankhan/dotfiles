#!/bin/bash
while [ "$select" != "NO" -a "$select" != "YES" ]; do
    select=$(echo -e 'NO\nYES' | dmenu -nb '#2f343f' -nf '#f3f4f5' -sb '#E0A434' -sf '#f3f4f5' -fn 'Ubuntu' -i -p "Are you sure you want to logout?")
    [ -z "$select" ] && exit
done
[ "$select" = "NO" ] && exit 0
i3-msg exit
