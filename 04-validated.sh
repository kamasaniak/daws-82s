#!/bin/bash

validate() {
  # treat a missing/empty first arg as failure
  if [ "${1:-1}" -ne 0 ]; then
    echo >&2 "$2 ...FAILURE (exit code: ${1:-unknown})"
    exit 1
  else
    echo "$2 ...SUCCESS"
  fi
}



