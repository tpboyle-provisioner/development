#!/bin/bash

SRC_URL="https://github.com/tpboyle-provisioner/src.git"


# LOCATE MODULE ROOT

DEVELOPMENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$DEVELOPMENT_DIR/apps/_all.sh"

[ -f "$DEVELOPMENT_DIR/conf.sh" ] && source "$DEVELOPMENT_DIR/conf.sh"


# HELPERS

log_header () {
  info "development" "Checking _development_ provisioning..."
}

log_footer () {
  info "development" "... _development_ provisioning complete."
}


# INTERFACE

provision () {
  all_development_apps_are_provisioned
}


# MAIN

main () {
  log_header
  provision
  log_footer
}


# BOOTSTRAP

bootstrap () {
  [[ ! -d ./src ]] && git clone "$SRC_URL" ./src &> /dev/null
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  bootstrap
  main "$@"
fi
