


NAME=Inception

$(NAME): all
	

all:
	cd ./srcs && docker-compose up

clean:
	cd ./srcs && docker-compose stop
	

fclean:
	docker system prune -f -a --all
	cd ./srcs && docker-compose down
	docker volume rm -f mariadb_vol wordpress_vol

re: fclean $(NAME)
	
enter_mariadb:
	@cd ./srcs && docker exec -it mariadb sh

enter_nginx:
	@cd ./srcs && docker exec -it nginx sh

enter_wordpress:
	@cd ./srcs && docker exec -it wordpress sh

.PHONY: all clean fclean re enter_mariadb enter_nginx enter_wordpress










