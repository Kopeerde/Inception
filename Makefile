


NAME=Inception

$(NAME): all
	

all:
	cd ./srcs && docker-compose up --force-recreate --build

clean:
	cd ./srcs && docker-compose stop
	

fclean:
	cd ./srcs && docker-compose down
	docker volume rm mariadb_vol wordpress_vol

re: fclean $(NAME)
	
enter_mariadb:
	@cd ./srcs && docker exec -it mariadb sh

enter_nginx:
	@cd ./srcs && docker exec -it nginx sh

enter_wordpress:
	@cd ./srcs && docker exec -it wordpress sh

.PHONY: all clean fclean re enter_mariadb enter_nginx enter_wordpress










