FROM alpine:latest

MAINTAINER enify <mikucube@outlook.com>


RUN apk update && \
    apk add aria2 && \
    apk add darkhttpd && \
    apk add wget && \
        mkdir /webgui && \
        wget -qO webgui.zip https://github.com/mayswind/AriaNg/releases/download/1.1.1/AriaNg-1.1.1.zip && \
        unzip webgui.zip -d /webgui && \
        rm webgui.zip && \
        apk del wget && \
    mkdir /download

COPY conf /conf

EXPOSE 6800
EXPOSE 80

ENTRYPOINT ["/conf/startup.sh"]
