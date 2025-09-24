#!/bin/bash

validate () {
    then
      echo "$1 ...FAILURE"
      exit 1
    else
      echo "$2 ...SUCCESS"

    fi

}
