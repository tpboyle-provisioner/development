#!/bin/bash


# LOCATE PROJECT ROOT

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$DIR/apps/_installer.sh"

[ -f "$DIR/conf.sh" ] && source "$DIR/conf.sh"


# HELPERS

log_header () {
  info "development" "---- Starting <<DEVELOPMENT>> provisioning... ----"
}

log_footer () {
  info "development" "---- ...<<DEVELOPMENT>> provisioning complete. ----"
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

