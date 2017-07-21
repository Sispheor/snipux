# Proxy

## System wild

Set proxy Linux in `/etc/environment`
```
http_proxy="http://web-proxy.gre.hpecorp.net:8080"
https_proxy="http://web-proxy.gre.hpecorp.net:8080"
NO_PROXY="localhost,127.0.0.1,30.114.132.5,gre.hpecorp.net"
```

## YUM

Edit `/etc/yum.conf` and add

```
proxy=http://web-proxy.europe.hp.com:8080
```
