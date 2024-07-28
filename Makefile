up :
	docker compose -f ./srcs/docker-compose.yml up -d

down :
	docker compose -f ./srcs/docker-compose.yml down

start :
	docker compose -f ./srcs/docker-compose.yml start

stop :
	docker compose -f ./srcs/docker-compose.yml stop 

clear :
	docker system prune -a
	docker rm $(docker ps -q)
	docker rmi $(docker images -q)