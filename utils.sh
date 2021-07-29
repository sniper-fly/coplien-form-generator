create_file() {
    for class_file_name in "${@}" ;
    do
        touch ${class_file_name}.cpp ${class_file_name}.hpp
        printf "${GREEN}create ${class_file_name}.cpp${RESET}\n"
        printf "${GREEN}create ${class_file_name}.hpp${RESET}\n"
    done
}

delete_file() {
    for class_file_name in "${@}" ;
    do
        rm -rf ${class_file_name}.cpp ${class_file_name}.hpp
        printf "${RED}delete ${class_file_name}.cpp${RESET}\n"
        printf "${RED}delete ${class_file_name}.hpp${RESET}\n"
    done
}
