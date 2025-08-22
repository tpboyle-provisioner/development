#!/bin/bash


# LOCATE PROJECT ROOT

ROOT_DIR=$(dirname -- "${BASH_SOURCE[0]}")


# SOURCES

source "./conf.sh"
source "src/logger.sh"
source "apps/_installer.sh"


# HELPERS

log_header () {
  info "main" "---- Starting provisioning... ----"
}

log_footer () {
  info "main" "---- ...provisioning complete. ----"
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

