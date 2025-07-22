#!/bin/bash

if [ -z "$1" ]; then
  echo -e "\033[1;31m[ERROR]\033[0m Missing required argument: project path"
  echo -e "\033[1;33mUsage:\033[0m $0 /path/to/project [--ssh]"
  exit 1
fi

PROJECT_DIR="$1"
WITH_SSH=false

if [ "$2" == "--ssh" ]; then
  WITH_SSH=true
fi

ddev poweroff && cd "$PROJECT_DIR" && ddev start

if [ "$WITH_SSH" = true ]; then
  ddev ssh
fi
