NAME=Inception

all : $(NAME)
	
$(NAME) :
	mkdir ../data
	mkdir ../data/mariadb
	mkdir ../data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build -d

clean :
	sudo rm -rf ../data
	docker-compose -f ./srcs/docker-compose.yml down

fclean :
	sudo bash remove.sh
	
re : fclean all

.PHONY	: all clean fclean re