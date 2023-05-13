#!/bin/bash
getent hosts my.ddnsdomain.com | awk '{print "allow\t\t" $1 ";\t\t# DDNS IP" }' > /config/nginx/homeip.inc
nginx -c /config/nginx/nginx.conf -s reload