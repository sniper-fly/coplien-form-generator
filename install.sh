#!/bin/sh

INSTALL_PATH="${HOME}/.local/bin"
CMD_NAME="coplien"

ln -sf "`pwd`/coplien.sh" "${INSTALL_PATH}/${CMD_NAME}"

sed -i -e "3s!.*!COPLIEN_LIB_PATH='`pwd`'!" coplien.sh
sed -i -e "4s!.*!CMD_NAME='${CMD_NAME}'!" coplien.sh
