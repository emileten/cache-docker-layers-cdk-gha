#!/bin/bash

# Check the first argument
if [[ $1 == "build" ]]; then
  # Use docker buildx for build commands
  command docker buildx "${@:1}"
else
  # Use docker for all other commands
  command docker "${@:1}"
fi
