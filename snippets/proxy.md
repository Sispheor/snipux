# Proxy

## System wild

Set proxy Linux in `/etc/environment`

    http_proxy="http://proxy.domain:8080"
    https_proxy="http://wproxy.domain:8080"
    NO_PROXY="localhost,127.0.0.1,1.2.3.4,proxy.domain"


## YUM

Edit `/etc/yum.conf` and add

    proxy=http://proxy.domain:8080


## APT

In /etc/apt/apt.conf.d/30proxy

    Acquire::http::proxy "http://proxy.domain:8080/";
    Acquire::https::proxy "http://proxy.domain:8080/";


## Docker

Create a systemd drop-in directory for the docker service

    sudo mkdir -p /etc/systemd/system/docker.service.d


Create `/etc/systemd/system/docker.service.d/http-proxy.conf`

    [Service]
    Environment="HTTP_PROXY=http://proxy.domain:8080"
    Environment="HTTPS_PROXY=http://proxy.domain:8080"
    Environment="NO_PROXY=localhost,127.0.0.1"


Then

    sudo systemctl daemon-reload
    sudo systemctl restart docker
