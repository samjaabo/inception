# up : down clear
# 	docker compose -f srcs/docker-compose.yml up  -d

# down :
# 	docker compose -f srcs/docker-compose.yml down

# start :
# 	docker compose -f srcs/docker-compose.yml start

# stop :
# 	docker compose -f srcs/docker-compose.yml stop

# clear:				
# 	docker system prune -af || true
# 	docker rm $(docker ps -q) || true
# 	docker rmi $(docker images -q) || true
# 	docker volume rm $(docker volume ls -q) || true
# 	# rm -rf  /workspaces/home/samjaabo/data/wordpress/*
# 	# rm -rf  /workspaces/home/samjaabo/data/mariadb/*


# Variables
COMPOSE_FILE = srcs/docker-compose.yml

# Default target
.PHONY: all
all: build up

# Build the Docker images
.PHONY: build
build:
	docker-compose -f $(COMPOSE_FILE) build

# Start the Docker containers
.PHONY: up
up:
	docker-compose -f $(COMPOSE_FILE) up -d

# Stop the Docker containers
.PHONY: down
down:
	docker-compose -f $(COMPOSE_FILE) down

# Stop and remove all containers, networks, and volumes
.PHONY: clean
clean:
	docker-compose -f $(COMPOSE_FILE) down -v --rmi all

# Show logs for all services
.PHONY: logs
logs:
	docker-compose -f $(COMPOSE_FILE) logs -f

# Show logs for a specific service
.PHONY: logs-% 
logs-%:
	docker-compose -f $(COMPOSE_FILE) logs -f $*

# View the status of containers
.PHONY: ps
ps:
	docker-compose -f $(COMPOSE_FILE) ps

# Execute a command in a running container
.PHONY: exec
exec:
	docker-compose -f $(COMPOSE_FILE) exec $$(SERVICE) $$(COMMAND)

# Remove all stopped containers
.PHONY: prune
prune:
	docker container prune -f

# Build and start the containers (default)
.PHONY: all
all: build up

# Check the status of containers and networks
.PHONY: status
status: ps
