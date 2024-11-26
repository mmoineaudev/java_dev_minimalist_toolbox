#!/bin/bash


####################
# Java install dirs 
JAVA_DIRS=
####################
# Maven install dirs
MAVEN_DIRS=
MAVEN_DEFAULT=
####################

# COLORS
RAZ_STYLE="\e[0m"
BLUE_STYLE="\e[0;49;96m"
PURPLE_STYLE="\e[1;40;35m"
RED_STYLE="\e[91m"
GREEN_STYLE="\e[38;5;82m"
UDERLINE_STYLE="\e[4m"
PROMPT_STYLE="\e[0;49;92m"
ORANGE_STYLE="\e[0;40;93m"

####################
# UNLIMITED HISTORY
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
####################
