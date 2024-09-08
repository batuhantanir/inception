DC := docker-compose -f ./srcs/docker-compose.yml
DATA_DIR = /home/data/

all:
	@sudo mkdir -p $(DATA_DIR)wordpress
	@sudo mkdir -p $(DATA_DIR)mysql
	@sudo $(DC) up -d --build

down:
	@sudo $(DC) down