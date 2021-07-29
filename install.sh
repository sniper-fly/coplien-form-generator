#!/bin/sh

INSTALL_PATH="${HOME}/.local/bin"
CMD_NAME="cpform"

ln -sf "`pwd`/coplien.sh" "${INSTALL_PATH}/${CMD_NAME}"

sed -i -e "s@^COPLIEN_LIB_PATH=.*@COPLIEN_LIB_PATH='`pwd`'@" coplien.sh
sed -i -e "s@^CMD_NAME=.*@CMD_NAME='${CMD_NAME}'@" coplien.sh

#TODO: iオプションを置き換える。シェル変数自体は用意しておき、文末を置換する形で設定を変える
# create コマンドの条件分岐
