up : down clear
	docker compose -f ./srcs/docker-compose.yml up  -d

down :
	docker compose -f ./srcs/docker-compose.yml down

start :
	docker compose -f ./srcs/docker-compose.yml start

stop :
	docker compose -f ./srcs/docker-compose.yml stop

clear:				
	docker system prune -af || true
	docker rm $(docker ps -q) || true
	docker rmi $(docker images -q) || true
	docker volume rm $(docker volume ls -q) || true
	sudo rm -rf  /workspaces/home/samjaabo/data/wordpress/*
	sudo rm -rf  /workspaces/home/samjaabo/data/mariadb/*


rm-volumes:
	


re:
	> /div/null 2>&1