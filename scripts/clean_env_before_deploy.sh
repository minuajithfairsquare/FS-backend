#!/bin/bash
# stop Apache2 if running
isExistApp=`pgrep apache2`
if [[ -n  $isExistApp ]]; then
    systemctl stop apache2
fi
# clear dir contents b4 code deploy extract...
rm -fR /var/www/html/harlibuat/*
mkdir -p /var/www/html/harlibuat
rm -fR /var/www/html/admin/*
mkdir -p /var/www/html/admin

