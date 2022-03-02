#!/usr/bin/env bash

CONFIGPATH=/opt/pursue/config/

autocomplete(){
    COMMANDS=$(awk -F'.' '{print "--"$1}' ORS=' ' <(ls "$CONFIGPATH"))
    COMMANDS=$COMMANDS' --help'
    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "${COMMANDS}" -- ${cur}) )

    return 0
}
complete -o nospace -F autocomplete pursue