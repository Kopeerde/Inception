


NAME=Inception

$(NAME):
	

all:
	cd ./mariadb && docker build .
	cd ./nginx && docker build .
	cd ./wordpress && docker build .

clean:
	

fclean:
	

re:
		












