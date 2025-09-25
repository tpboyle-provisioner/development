#!/bin/bash

# Get current directory
DEV_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "$DEV_APPS_DIR/build_essentials.sh"
source "$DEV_APPS_DIR/python.sh"

source "$DEV_APPS_DIR/tools/_all.sh"


# INTERFACE

all_development_apps_are_provisioned () {
  ensure_build_essentials_are_installed
  ensure_python_is_installed
  ensure_all_development_tools_are_provisioned
}
