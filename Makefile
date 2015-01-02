VERSION = 0.0.8
BUILD = 0098
all:
	# Clean up the directories
	# rm -R bin/ obj/
	# If they do not exist, it creates them
	# TODO: Use a if
	# mkdir bin/ obj/
	gcc ./src/libutil.h -o ./libutil.o
	gcc ./src/mucro.c -o ./mucro

install: all
	sudo cp ./mucro /usr/bin

uninstall: all
	sudo rm /usr/bin/mucro
