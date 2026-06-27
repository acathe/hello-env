#!/usr/bin/env bash

set -euo pipefail

FLAG="${FLAG:-0}"
SWITCH="${SWITCH:-}"

parse_args() {
    POSITIONAL=()
    while (($# > 0)); do
        case "$1" in
            --flag)
                FLAG=1
                shift # shift once since flags have no values
                ;;
            --switch)
                numOfArgs=1 # number of switch arguments
                if (($# < numOfArgs + 1)); then
                    shift $#
                else
                    SWITCH="$2"
                    shift $((numOfArgs + 1)) # shift 'numOfArgs + 1' to bypass switch and its value
                fi
                ;;
            *) # unknown flag/switch
                POSITIONAL+=("$1")
                shift
                ;;
        esac
    done
}

main() {
    echo "Hello, world!"
}

if [[ $0 == "${BASH_SOURCE[0]}" ]]; then
    cd "$(dirname "${BASH_SOURCE[0]}")"
    parse_args "$@"
    set -- "${POSITIONAL[@]}" # restore positional params
    main "$@"
fi
