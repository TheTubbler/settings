#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "SCRIPTDIR is ${SCRIPTDIR}"
echo -e "HOME is ${HOME}"

TARGET=".gitconfig"
read -p "Install ${TARGET}? [y/N] " YN
case $YN in
	[Yy]* ) cp "${SCRIPTDIR}/${TARGET}" "${HOME}" ;;
	* ) ;;
esac

TARGET=".gitignore_global"
read -p "Install ${TARGET}? [y/N] " YN
case $YN in
	[Yy]* ) cp "${SCRIPTDIR}/${TARGET}" "${HOME}" ;;
	* ) ;;
esac

TARGET=".settings_bash"
read -p "Install ${TARGET}? [y/N] " YN
case $YN in
	[Yy]* ) cp "${SCRIPTDIR}/${TARGET}" "${HOME}" ;;
	* ) ;;
esac

TARGET=".tmux.conf"
read -p "Install ${TARGET}? [y/N] " YN
case $YN in
	[Yy]* ) cp "${SCRIPTDIR}/${TARGET}" "${HOME}" ;;
	* ) ;;
esac
