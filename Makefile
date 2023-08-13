WP_PATH=/home/aelaoufi/volumes/wordpress
DB_PATH=/home/aelaoufi/volumes/mariadb
DATA_PATH=/home/aelaoufi/volumes
DOCKER_COMPOSE_FILE=srcs/docker-compose.yml
DOCKER_COMPOSE_CMD=docker-compose --file $(DOCKER_COMPOSE_FILE)
SYSTEM_PRUNE=docker system prune -af

all:
	mkdir -p $(WP_PATH) $(DB_PATH)
	$(DOCKER_COMPOSE_CMD) up -d
clean:
	$(DOCKER_COMPOSE_CMD) down
fclean:
	rm -rf $(DATA_PATH)
	$(SYSTEM_PRUNE)
	$(DOCKER_COMPOSE_CMD) down -v --rmi all
re: fclean all