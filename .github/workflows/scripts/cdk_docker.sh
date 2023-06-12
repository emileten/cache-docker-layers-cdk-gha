#!/bin/bash

# Check the first argument
if [[ $1 == "build" ]]; then
  # Use docker buildx for build commands
  # echo the command before running it
  echo docker buildx "${@:1}" --load --cache-to "type=gha,mode=max" --cache-from type=gha
  command docker buildx "${@:1}" --load --cache-to "type=gha,mode=max" --cache-from type=gha
else
  # Use docker for all other commands
  # avoid echoing the command because the CDK relies on sdout structure.
  command docker "${@:1}"
fi
