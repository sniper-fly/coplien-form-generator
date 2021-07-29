#!/bin/sh

# You have to edit these below before installing. #
INSTALL_PATH="${HOME}/.local/bin"
CMD_NAME="cpform"

ln -s "`pwd`/coplien.sh" "${INSTALL_PATH}/${CMD_NAME}"

# if you are not using GNU sed, you cannot use -i option.
# You need to use gsed instead or manually edit coplien.sh.
sed -i -e "s@^COPLIEN_LIB_PATH=.*@COPLIEN_LIB_PATH='`pwd`'@" coplien.sh
sed -i -e "s@^CMD_NAME=.*@CMD_NAME='${CMD_NAME}'@" coplien.sh
