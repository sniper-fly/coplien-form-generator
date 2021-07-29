create_file() {
    for class_file_name in "${@}" ;
    do
        # create cpp file
        sed -e "s/__CLASS_NAME__/${class_file_name}/g" \
            ${COPLIEN_LIB_PATH}/template/template.cpp > ${class_file_name}.cpp
        printf "${GREEN}create ${class_file_name}.cpp${RESET}\n"

        # create hpp file
        sed -e "s/__CLASS_NAME__/${class_file_name}/g" \
            ${COPLIEN_LIB_PATH}/template/template.hpp > ${class_file_name}.hpp

        HEADER_CONST="`echo ${class_file_name} | tr [a-z] [A-Z]`"
        HEADER_CONST="`echo ${HEADER_CONST} | tr . _`"
        sed -i -e "s/__HEADER__/${HEADER_CONST}_HPP/g" ${class_file_name}.hpp
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
