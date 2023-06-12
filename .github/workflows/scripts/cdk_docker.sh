#!/bin/bash

# Check the first argument
if [[ $1 == "build" ]]; then
  # Use docker buildx for build commands
  # echo the command before running it
  echo docker buildx "${@:1}" --load
  command docker buildx "${@:1}" --load
elif [[ $1 == "cp" ]]; then
  # Add a 'cdk-' prefix to the first of all the remaining arguments
  # Echo the command before running it
  echo docker cp "cdk-${2}" "${@:3}"
  command docker cp "cdk-${2}" "${@:3}"
else
  # Use docker for all other commands
  # echo the command before running it
  echo docker "${@:1}"
  command docker "${@:1}"
fi
