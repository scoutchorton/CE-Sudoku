#
# eZ80 Assembly/TI 84+ CE makefile
# scoutchorton, 2021
#

#
# General project details
#

#Name of the project and executable
NAME = sudoku
#Flags for spasm
FLAGS := -E











#############
# Variables #
#############

#Folders
SRCDIR = src

#Misc
CC = spasm
.DEFAULT_GOAL := ${NAME}.8xp

#Source files
SRC = ${wildcard ${SRCDIR}/*.asm}

######################
# Compiling recipies #
######################

#Compile executable
${NAME}.8xp: ${SRC}
	@echo "  \e[0;49;93m[\e[0;49;92m${CC}\e[0;49;93m]\e[0m $@"
	${CC} ${FLAGS} $< $@

#Cleanup compilation data
.PHONY: clean
clean:
	@rm ${NAME}.8xp
