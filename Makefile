APP_NAME=app
CC_FLAGS=-Wall
build:
	gcc *.c -o $(APP_NAME) $(CC_FLAGS) 
clean:
	rm -rf $(APP_NAME)
run:
	./$(APP_NAME)
