#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "SCRIPTDIR is ${SCRIPTDIR}"
echo -e "HOME is ${HOME}"
echo -e ""

function inst() {
    read -p "Install $1? [y/N] " YN
    case "$YN" in
	[Yy]* )
	    cp "${SCRIPTDIR}/$1" "${HOME}"
	    echo -e "Installing..."
	    ;;
	* ) ;;
    esac
}

inst ".gitconfig"
inst ".gitignore_global"
inst ".settings_bash"
inst ".tmux.conf"
inst ".nanorc"
