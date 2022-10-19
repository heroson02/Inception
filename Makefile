all : 
	mkdir ../data
	mkdir ../data/mariadb
	mkdir ../data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up
clean :
	sudo rm -rf ../data
	docker-compose -f ./srcs/docker-compose.yml down
	
re : clean all