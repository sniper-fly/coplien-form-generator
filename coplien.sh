#!/bin/bash

# root path of this repository.
COPLIEN_LIB_PATH='/home/rnakai/work/chpp'

CMD_NAME='cpform'

RESET="\e[0m"
GREEN="\e[32m"
RED="\e[31m"

source "${COPLIEN_LIB_PATH}/utils.sh"

# ${@:a:b} で、a番目の引数からb個の引数を取得できる
# $# でchppコマンドに渡された引数の数を取得するので、
# 第二引数から最後の引数までをcreate/delete_file関数に渡している
if [ "$1" = "g" ]; then
    create_file ${@:2:($# - 1)}
elif [ "$1" = "d" ]; then
    delete_file ${@:2:($# - 1)}
else
    echo "Usage : ${CMD_NAME} [OPTION] [FILE_NAME_TO_CREATE]

There are:
    g option to create ***.cpp ***.hpp
    d option to delete ***.cpp ***.hpp

Examples:
    ${CMD_NAME} g hoge fuga            (then create hoge.cpp hoge.hpp fuga.cpp fuga.hpp)
    ${CMD_NAME} d hoge fuga            (then delete hoge.cpp hoge.hpp fuga.cpp fuga.hpp)
"

fi
