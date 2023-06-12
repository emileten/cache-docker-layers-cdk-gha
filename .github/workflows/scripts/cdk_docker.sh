#!/bin/bash

# Check the first argument
if [[ $1 == "build" ]]; then
  # Use docker buildx for build commands
  # echo the command before running it
  echo docker buildx "${@:1}" --load
  command docker buildx "${@:1}" --load
else
  # Use docker for all other commands
  # echo the command before running it
  echo docker "${@:1}"
  command docker "${@:1}"
fi
