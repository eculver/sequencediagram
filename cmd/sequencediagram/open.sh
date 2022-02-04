#!/bin/bash
# shellcheck disable=SC1091,SC1090,SC2154

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE_URL="https://sequencediagram.org/index.html#initialData="

_usage() {
    echo "Usage: ./open.sh <path-to-diagram-file>"
    echo
}

main() {
    local file="$1"
    if [[ -z "${file}" ]]; then
        _usage
        echo "filename is required" >&2
        exit 1
    fi
    open "$BASE_URL$(node "$DIR/lzstring.js" "$file")"
}

main "$@"
