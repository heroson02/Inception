NAME=Inception
DB_PATH=/home/yson/data

all : $(NAME)
	
$(NAME) :
	mkdir -p $(DB_PATH)
	mkdir -p $(DB_PATH)/mariadb
	mkdir -p $(DB_PATH)/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build

down : 
	docker-compose -f ./srcs/docker-compose.yml down

clean : down
	sudo rm -rf $(DB_PATH)

fclean : clean
	sudo bash remove.sh
	
re : fclean all

.PHONY	: all clean fclean re down