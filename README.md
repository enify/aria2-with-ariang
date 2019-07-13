Aria2 with AriaNg WebUI, see：https://hub.docker.com/r/enify/aria2-with-ariang


### Usage
1. Run: `docker run -d --name=aria2 -p 6800:6800 -p 6801:80 -v <path>:/download enify/aria2-with-ariang:latest`
2. Open `http://<server ip>:6801` in your browser to access webui.

### Params
- `-p 80` ：WebUI Port
- `-p 6800` ：RPC Access Port
- `-v /conf/aria2.conf` ：Aria2 Config File
- `-v /conf/on-complete.sh` ：Sh to run on complete
- `-v /download` ：Download Save Path

### Build
`docker build -t aria2-with-ariang:latest ./`


### Link
- [Aria2](https://github.com/aria2/aria2)
- [AriaNg](https://github.com/mayswind/AriaNg)
