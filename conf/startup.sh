#!/bin/sh
if [ ! -f /download/aria2.session ];then
    touch /download/aria2.session
fi

darkhttpd /webgui --port 80 &
aria2c --conf-path=/conf/aria2.conf
