create_file() {
    for class_file_name in "${@}" ;
    do
        # create cpp file
        if [ ! -e "${class_file_name}.cpp" ]; then
            sed -e "s/__CLASS_NAME__/${class_file_name}/g" \
                ${COPLIEN_LIB_PATH}/template/template.cpp > ${class_file_name}.cpp
            printf "${GREEN}create ${class_file_name}.cpp${RESET}\n"
        fi

        # create hpp file
        if [ ! -e "${class_file_name}.hpp" ]; then
            class_name_replaced="`sed -e s/__CLASS_NAME__/${class_file_name}/g \
                ${COPLIEN_LIB_PATH}/template/template.hpp`"
            HEADER_CONST="`echo ${class_file_name} | tr [a-z] [A-Z]`"
            HEADER_CONST="`echo ${HEADER_CONST} | tr . _`"
            echo "${class_name_replaced}" |
            sed -e "s/__HEADER__/${HEADER_CONST}_HPP/g" > ${class_file_name}.hpp
            printf "${GREEN}create ${class_file_name}.hpp${RESET}\n"
        fi
    done
}

delete_file() {
    for class_file_name in "${@}" ;
    do
        if [ -e "${class_file_name}.cpp" ]; then
            rm -rf ${class_file_name}.cpp
            printf "${RED}delete ${class_file_name}.cpp${RESET}\n"
        fi

        if [ -e "${class_file_name}.hpp" ]; then
            rm -rf ${class_file_name}.hpp
            printf "${RED}delete ${class_file_name}.hpp${RESET}\n"
        fi
    done
}
