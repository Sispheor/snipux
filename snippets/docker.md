# Docker

Add current user to Docker group

	sudo gpasswd -a ${USER} docker

List container with only IDs, names, command and status

	docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Command}}\t{{.Status}}"


Remove all containers

	docker rm $(docker ps -a -q)


Delete all images

	docker rmi $(docker images -q)

Delete orphaned images

	docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")

Delete dangling volumes

	docker volume rm $(docker volume ls -f dangling=true -q)

Delete all Exited containers

	docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm

Enter into an existing container

	docker exec -it <container-id> bash

## Install

	# official doc for installation: https://docs.docker.com/install/linux/docker-ce/ubuntu/
	sudo apt install docker.io
	sudo gpasswd -a ${USER} docker
	sudo systemctl start docker
	sudo systemctl enable docker
	pipx install docker-compose

Logout and login back to allow the user to access docker group.

## Proxy

	sudo mkdir -p /etc/systemd/system/docker.service.d

Edit `/etc/systemd/system/docker.service.d/http-proxy.conf`

	[Service]
	Environment="HTTP_PROXY=http://web-proxy.bbn.hpecorp.net:8080"
	Environment="http_proxy=http://web-proxy.bbn.hpecorp.net:8080"
	Environment="HTTPS_PROXY=http://web-proxy.bbn.hpecorp.net:8080"
	Environment="https_proxy=http://web-proxy.bbn.hpecorp.net:8080"
	Environment="NO_PROXY=localhost,127.0.0.1"
	Environment="no_proxy=localhost,127.0.0.1"

Then

	sudo systemctl daemon-reload
	sudo systemctl restart docker

Edit  `~/.docker/config.json`
	{
		"proxies":
		{
			"default":
			{
			"httpProxy": "http://web-proxy.bbn.hpecorp.net:8080",
			"httpsProxy": "http://web-proxy.bbn.hpecorp.net:8080",
			"noProxy": "localhost,127.0.0.1,hpecorp.net"
			}
		}
	}

#### DNS

Edit `/etc/docker/daemon.json` and set compagny's DNS
	{
		"dns": ["16.110.135.52"]
	}

Then
	sudo systemctl restart docker

Test
	docker run busybox nslookup google.com
