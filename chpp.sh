#!/bin/sh

RESET="\e[0m"
GREEN="\e[32m"

for class_file_name in "${@}" ;
do
    touch ${class_file_name}.cpp ${class_file_name}.hpp
    printf "${GREEN}create ${class_file_name}.cpp${RESET}\n"
    printf "${GREEN}create ${class_file_name}.hpp${RESET}\n"
done
