#!/bin/bash


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

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
