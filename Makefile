DC := docker-compose -f ./srcs/docker-compose.yml
DATA_DIR = /home/data/

all:
	@mkdir -p $(DATA_DIR)wordpress
	@mkdir -p $(DATA_DIR)mysql
	@$(DC) up -d --build

down:
	@$(DC) down