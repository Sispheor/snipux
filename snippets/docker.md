# Docker
Add current user to Docker group

	sudo gpasswd -a ${USER} docker

List container with only IDs, names, command and status
	
	docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Command}}\t{{.Status}}"


Remove all containers

	docker rm $(docker ps -a -q)


Delete all images

	docker rmi $(docker images -q)

Delete all Exited containers

	docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm