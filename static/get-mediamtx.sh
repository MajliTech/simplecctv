#!/bin/bash
cd /tmp
mkdir mediamtx; cd mediamtx
curl https://github.com/bluenviron/mediamtx/releases/download/v1.4.2/mediamtx_v1.4.2_linux_amd64.tar.gz -L > mediamtx.tar.gz
tar -xf mediamtx.tar.gz
rm mediamtx.tar.gz
mv mediamtx /usr/bin
chmod +x /usr/bin/mediamtx
mkdir /etc/mediamtx
mv /static/mediamtx.yml /etc/mediamtx
cd ..
rm mediamtx -r